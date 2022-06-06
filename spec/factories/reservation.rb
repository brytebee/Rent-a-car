FactoryBot.define do
  factory :reservation do
		pick_up_date { '2022-05-30' }
		drop_off_date { '2022-06-05' }
		pick_up_city { 'Paris' }
		return_city { 'Barcelona' }
		user
		car
  end
end
