FactoryBot.define do
  factory :user do
    name { 'Robert' }
    username { 'roby' }
    email { 'robert@gmail.com' }
    password { 'secret123' }
  end
end
