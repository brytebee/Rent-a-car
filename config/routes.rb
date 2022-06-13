Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
namespace :api, defaults: {format: :json} do
  namespace :v1 do
    resources :users, only: %i[index create]
    resources :cars
    resources :reservations, only: %i[index create destroy]
    resources :current_user, only: %i[index]
  end
end

post 'api/v1/auth/login' , to: 'api/v1/authentication#login'

end
