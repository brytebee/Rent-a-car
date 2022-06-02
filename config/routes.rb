Rails.application.routes.draw do
namespace :api, defaults: {format: :json} do
  namespace :v1 do
    resources :users, only: %i[index create]
    resources :cars
  end
end

post 'api/v1/auth/login' , to: 'api/v1/authentication#login'

end
