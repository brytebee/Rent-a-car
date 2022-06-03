require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:each) do
    @user = User.new(id: 4, name: 'Robert', username: 'roby',
                     email: 'robert@gmail.com', password: 'secret123')
    @car = Car.create(user: @user, model: 'Ford', make: 'Some',
                      image: 'photo.jpg', color: 'red', seat: 4,
                      year: 2019, aircon: 'false', price: '18.00', description: 'some')

    @reservation = Reservation.create(pick_up_date: '2022-05-30', drop_off_date:
                     '2022-06-05', pick_up_city: 'Paris', return_city: 'Barcelona', car_id: @car.id, user_id: @user.id)
  end

  it 'if is valid' do
    expect(@reservation).to be_valid
  end

  it 'if is blank pick up date' do
    @reservation.drop_off_date = nil
    expect(@reservation).to_not be_valid
  end

  it 'if there is pick up date' do
    @reservation.pick_up_date = '2022-05-30'
    expect(@reservation).to be_valid
  end

  it 'if there is drop_off_date' do
    @reservation.drop_off_date = '2022-06-05'
    expect(@reservation).to be_valid
  end

  it 'if there is pick_up_city' do
    @reservation.pick_up_city = 'Paris'
    expect(@reservation).to be_valid
  end

  it 'if there is drop_off_date' do
    @reservation.user_id = @user.id
    expect(@reservation).to be_valid
  end

  it 'if user is present' do
    @reservation.return_city = 'Barcelona'
    expect(@reservation).to be_valid
  end
end
