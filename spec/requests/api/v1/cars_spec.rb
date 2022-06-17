require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do
  let!(:user) { create(:user) }
  let!(:new_token) { JsonWebToken.encode(user_id: user.id) }
  let(:Authorization) { "Bearer #{new_token}" }
  let!(:car) { create(:car, aircon: true, user:) }
  let(:id) { car.id }

  path '/api/v1/cars' do
    get('list cars') do
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

    post('create car') do
      tags 'Cars'
      consumes 'application/json', 'application/xml'
      security [Bearer: {}]
      parameter name: :Authorization, in: :header, type: :string

      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          make: { type: :string },
          model: { type: :string },
          image: { type: :string },
          color: { type: :string },
          year: { type: :integer },
          engine: { type: :string },
          seat: { type: :integer },
          aircon: { type: :boolean },
          price: { type: :money },
          user_id: { type: :bigint },
          description: { type: :text }

        },
        required: %w[make model image color year engine seat aircon price user_id description]
      }

      response(201, 'successful') do
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

  path '/api/v1/cars/{id}' do
    parameter name: :id, in: :path, type: :integer, description: 'id'

    get('show car') do
      tags 'Cars'
      consumes 'application/json', 'application/xml'

      response(200, 'successful') do
        schema type: :object,
               properties: {
                 make: { type: :string },
                 model: { type: :string },
                 image: { type: :string },
                 color: { type: :string },
                 year: { type: :integer },
                 engine: { type: :string },
                 seat: { type: :integer },
                 aircon: { type: :boolean },
                 price: { type: :money },
                 user_id: { type: :bigint },
                 description: { type: :text }

               },
               required: %w[make model image color year engine seat aircon price user_id description]

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

    patch('update car') do
      tags 'Cars'
      consumes 'application/json', 'application/xml'
      security [Bearer: {}]
      parameter name: :Authorization, in: :header, type: :string

      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          make: { type: :string },
          model: { type: :string },
          image: { type: :string },
          color: { type: :string },
          year: { type: :integer },
          engine: { type: :string },
          seat: { type: :integer },
          aircon: { type: :boolean },
          price: { type: :money },
          user_id: { type: :bigint },
          description: { type: :text }

        },
        required: %w[make model image color year engine seat aircon price user_id description]
      }

      response(200, 'successful') do
        schema type: :object,
               properties: {
                 make: { type: :string },
                 model: { type: :string },
                 image: { type: :string },
                 color: { type: :string },
                 year: { type: :integer },
                 engine: { type: :string },
                 seat: { type: :integer },
                 aircon: { type: :boolean },
                 price: { type: :money },
                 user_id: { type: :bigint },
                 description: { type: :text }

               },
               required: %w[make model image color year engine seat aircon price user_id description]
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

    put('update car') do
      tags 'Cars'
      consumes 'application/json', 'application/xml'
      security [Bearer: {}]
      parameter name: :Authorization, in: :header, type: :string

      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          make: { type: :string },
          model: { type: :string },
          image: { type: :string },
          color: { type: :string },
          year: { type: :integer },
          engine: { type: :string },
          seat: { type: :integer },
          aircon: { type: :boolean },
          price: { type: :money },
          user_id: { type: :bigint },
          description: { type: :text }

        },
        required: %w[make model image color year engine seat aircon price user_id description]
      }
      response(200, 'successful') do
        schema type: :object,
               properties: {
                 make: { type: :string },
                 model: { type: :string },
                 image: { type: :string },
                 color: { type: :string },
                 year: { type: :integer },
                 engine: { type: :string },
                 seat: { type: :integer },
                 aircon: { type: :boolean },
                 price: { type: :money },
                 user_id: { type: :bigint },
                 description: { type: :text }

               },
               required: %w[make model image color year engine seat aircon price user_id description]

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

    delete('delete car') do
      tags 'Cars'
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
