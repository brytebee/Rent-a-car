FactoryBot.define do
  factory :user do
    name { 'Robert' }
    sequence(:username) { |n| "User #{n}" }
    sequence(:email) { |n| "test-#{n}@gmail.com" }
    password { 'secret123' }
  end
end
