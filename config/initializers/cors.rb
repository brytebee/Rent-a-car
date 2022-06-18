Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     origins "https://dashboard.heroku.com/apps/rent-a-car-brytebee"

     resource "*",
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end
