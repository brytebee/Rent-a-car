require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before (:each) do
			@user = create(:user)
      @car = create(:car, aircon: true, user: @user)
      get '/api/v1/cars'
    end
    
    it 'returns all posts' do
			json = JSON.parse(response.body)
			expect(json.size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end