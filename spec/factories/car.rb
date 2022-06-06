FactoryBot.define do
  factory :car do
		model { 'Ford' }
		make { 'Some' }
		image { 'photo.jpg' }
		color { 'red' }
		seat { 4 }
		year { 2019 }
		engine { 'automatic' }
		aircon { 'false' }
		price { '18.00' }
		description { 'some' }
		user
  end
end
