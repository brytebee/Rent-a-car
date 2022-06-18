source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.3'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'tzinfo-data' # , platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem 'jwt'
gem 'bcrypt', '~> 3.1.7'
gem 'rack-cors'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'rswag-api'
gem 'rswag-ui'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'rswag-specs'
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  # gem 'shoulda-matchers'
end
