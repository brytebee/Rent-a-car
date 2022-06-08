require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:user) { create(:user) }
  let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
  let!(:token) do
    { 'Authorization' => "Bearer #{new_token}" }
  end

  before(:each) do
    get '/api/v1/users', headers: token
  end

  describe 'GET /api/v1/users' do
    context 'when the request is valid' do
      it 'returns all users & not empty' do
        expect(json_response).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(:success)
      end

      it 'returns the length of users' do
        expect(json_response.length).to eq(1)
      end
    end
  end

  describe 'POST /api/v1/users' do
    # let!(:new_user) { create(:user) }
    before do
      @user = attributes_for(:user)
      post '/api/v1/users', params: { user: @user }
    end

    context 'when the request is valid' do
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end
