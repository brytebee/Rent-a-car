require 'rails_helper'

RSpec.describe 'Cars', type: :request do
    let!(:user) { create(:user) }
    let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
    let!(:car) { create(:car, aircon: true, user: user) }
    let!(:token) do
      { "Authorization" => "Bearer #{new_token}" }
    end
    describe 'GET /index' do
        before(:each) do
          get '/api/v1/cars'
        end

    it 'returns all cars' do
      expect(json_response).not_to be_empty
      expect(json_response.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    before { get "/api/v1/cars/#{car.id}" }

    context 'when the car exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'DELETE /destroy' do
    before { delete "/api/v1/cars/#{car.id}", params: {}, headers: token }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'PUT /update' do
    before { put "/api/v1/cars/#{car.id}", params: { car: car.attributes }, headers: token }
    context 'Update car' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

end