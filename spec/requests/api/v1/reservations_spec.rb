require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  let!(:user) { create(:user) }
  let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
  let(:Authorization) { "Bearer #{new_token}" }
  let!(:car) { create(:car, aircon: true, user:) }
  let!(:reservation) { create(:reservation, car:, user:) }
  let!(:id) { reservation.id }

  path '/api/v1/reservations' do
    get('list reservations') do
      tags 'Reservations'
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

    post('create reservation') do
      tags 'Reservations'
      consumes 'application/json', 'application/xml'
      security [Bearer: {}]
      parameter name: :Authorization, in: :header, type: :string

      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          pick_up_date: { type: :date },
          drop_off_date: { type: :date },
          pick_up_city: { type: :string },
          return_city: { type: :string },
          user_id: { type: :bigint },
          car_id: { type: :bigint }

        },
        required: %w[pick_up_date drop_off_date pick_up_city return_city user_id car_id]
      }

      response(201, 'successful') do
        schema type: :object,
               properties: {
                 pick_up_date: { type: :date },
                 drop_off_date: { type: :date },
                 pick_up_city: { type: :string },
                 return_city: { type: :string },
                 user_id: { type: :bigint },
                 car_id: { type: :bigint }
               }
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    parameter name: :id, in: :path, type: :string, description: 'id'
    delete('delete reservation') do
      tags 'Reservations'
      consumes 'application/json', 'application/xml'
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
end
