require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
    let!(:user) { create(:user) }
    let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
    let!(:car) { create(:car, aircon: true, user: user) }
    let!(:reservations) { create(:reservation, car: car, user: user) }
    let!(:token) do
      { "Authorization" => "Bearer #{new_token}" }
    end

    before(:each) do
        get '/api/v1/reservations', headers: token
    end

    describe 'GET /api/v1/reservations' do
        context 'when the request is valid' do
            it 'returns all reservations & not empty' do
                expect(json_response).not_to be_empty
            end

            it 'returns status code 200' do
                expect(response).to have_http_status(:success)
            end

            it 'returns the length of reservations' do
                expect(json_response.length).to eq(1)
            end
        end
    end

   describe 'DELETE /api/v1/reservations/:id' do
    before { delete "/api/v1/reservations/#{reservations.id}", headers: token }
    context 'when the request is valid' do
        it 'returns status code 200' do
            expect(response).to have_http_status(200)
        end
    end
   end

   describe 'POST /api/v1/reservations' do
    let!(:new_reservation) { create(:reservation, car: car, user: user) }
    before { post '/api/v1/reservations', params: { reservation: new_reservation.attributes }, headers: token }

    it 'returns status code 201' do
        expect(response).to have_http_status(201)
    end

    it 'returns a created status' do
        expect(response).to have_http_status(:created)
    end

    it 'returns the reservation' do
        expect(json_response).to have_key('id')
    end

    it 'returns the reservation length' do
        expect(json_response.length).to eq(9)
    end

    it 'returns the pickup date' do
        expect(json_response).to have_key('pick_up_date')
    end

    it 'returns the drop off date' do
        expect(json_response).to have_key('drop_off_date')
    end

    it 'returns the pick up city' do
        expect(json_response).to have_key('pick_up_city')
    end

    it 'returns the return city' do
        expect(json_response).to have_key('return_city')
    end

    it 'returns the car id' do
        expect(json_response).to have_key('car_id')
    end

    it 'returns the user id' do
        expect(json_response).to have_key('user_id')
    end

   end
end