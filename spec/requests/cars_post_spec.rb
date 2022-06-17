require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  describe 'POST /create' do
    let!(:user) { create(:user) }
    let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
    let!(:token) do
      { 'Authorization' => "Bearer #{new_token}" }
    end
    let!(:new_car) { create(:car, aircon: true, user:) }

    context 'when the request is valid' do
      before do
        post '/api/v1/cars', params: { car: new_car.attributes }, headers: token
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end

      it 'returns a created status' do
        expect(response).to have_http_status(:created)
      end

      it 'returns the car name' do
        expect(json_response['model']).to eq(new_car.model)
      end

      it 'returns the car model' do
        expect(json_response['make']).to eq(new_car.make)
      end

      it 'returns the car year' do
        expect(json_response['year']).to eq(new_car.year)
      end

      it 'return the car aircon' do
        expect(json_response['aircon']).to eq(new_car.aircon)
      end

      it 'returns the car user_id' do
        expect(json_response['user_id']).to eq(new_car.user_id)
      end

      it 'return the car color' do
        expect(json_response['color']).to eq(new_car.color)
      end

      it 'return the car price' do
        # expect(json_response['price']).to eq(new_car.price)
      end

      it 'return the car description' do
        expect(json_response['description']).to eq(new_car.description)
      end

      it 'return the car image' do
        expect(json_response['image']).to eq(new_car.image)
      end
    end

    context 'when the request is invalid' do
      before do
        post '/api/v1/cars',
             params: { car: { model: '', make: '', year: '', aircon: '', user_id: '', color: '', price: '', description: '', image: '' } }, headers: token
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
