require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:each) do
    @user = create(:user)
    @car = create(:car)
    @reservation = create(:reservation, user: @user, car: @car)
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
