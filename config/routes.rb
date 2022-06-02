Rails.application.routes.draw do
  resources :cars
namespace :api, defaults: {format: :json} do
  namespace :v1 do
    resources :users, only: %i[index create]
   
  end
end

post 'api/v1/auth/login' , to: 'api/v1/authentication#login'


end
