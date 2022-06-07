require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  describe 'GET /index' do
    # before do
    #     @user = User.new(id: 1, name: 'Robert', username: 'roby', email: 'robert@gmail.com', password: 'secret123', password_confirmation: 'secret123')
    #     @car2 = Car.create(make: 'Toyota', model: 'Camry', description: 'Some text', image: 'photo image', color: 'blue', year: '2010', engine: 'Manual', aircon: true, seat: 5, price: '20000', user_id: @user.id)

    #     get '/api/v1/cars'
    # end
    before(:each) do
      @user = create(:user)
      @car = create(:car, user: @user, aircon: true)

      get '/api/v1/cars'
    end

    it 'returns all cars' do
      expect(json_response.size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end