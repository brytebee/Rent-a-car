FactoryBot.define do
  factory :user do
    name { 'Robert' }
    sequence(:username) { |n| "test#{n.to_s.rjust(3, "0")}" }
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@gmail.com" }
    password { 'secret123' }
  end
end
