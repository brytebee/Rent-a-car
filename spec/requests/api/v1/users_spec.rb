require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  path '/api/v1/users' do
    let!(:user) { create(:user) }
    let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
    let(:Authorization) { "Bearer #{new_token}" }
    get('list users') do
      security [Bearer: {}]
      parameter name: :Authorization, in: :header, type: :string

      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
  # path '/api/v1/users' do
  #   let!(:user) { { name: 'sam', username: 'dyhfjgfdgjdf', email: 'fdftgdfyd@gmail.com', password: '1234567', password_confirmation: '1234567' } }

  #   post('create user') do
  #     tags 'Users'
  #     consumes 'application/json', 'application/xml'

  #     parameter name: :user, in: :body, schema: {
  #       type: :object,
  #       properties: {
  #         name: { type: :string },
  #         username: { type: :string },
  #         email: { type: :string },
  #         password: { type: :string },
  #         password_confirmation: { type: :string }
  #       },
  #       required: %w[name username email password password_confirmation]
  #     }

  #     response(201, 'successful') do
  #       schema type: :object,
  #              properties: {
  #                token: { type: :string },
  #                username: { type: :string }

  #              }
  #       run_test!
  #     end
  #   end
  # end
end
