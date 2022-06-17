require 'rails_helper'

RSpec.describe Car, type: :model do
  before(:each) do
    @user = create(:user)
    # @user = User.create(name: 'John Doe', username: 'johndoe', email: 'johndoe@test.com', password: '123456', password_confirmation: '123456')
    @car = create(:car, aircon: true, user: @user)
  end

  it 'if is valid' do
    expect(@car).to be_valid
  end

  it 'if is blank make' do
    @car.make = nil
    expect(@car).to_not be_valid
  end

  it 'if there is make' do
    @car.make = 'Some'
    expect(@car).to be_valid
  end

  it 'if is blank model' do
    @car.model = nil
    expect(@car).to_not be_valid
  end

  it 'if there is model' do
    @car.model = 'Ford'
    expect(@car).to be_valid
  end

  it 'if engine is blank' do
    @car.engine = nil
    expect(@car).to_not be_valid
  end

  it 'check if there is photo' do
    @car.image = 'photo.jpg'
    expect(@car).to be_valid
  end

  it 'Check user is present' do
    @car.user = @user
    expect(@car).to be_valid
  end

  it 'if is blank color' do
    @car.color = nil
    expect(@car).to_not be_valid
  end

  it 'if there is color' do
    @car.color = 'red'
    expect(@car).to be_valid
  end

  it 'check seat is present' do
    @car.seat = 4
    expect(@car).to be_valid
  end

  it 'check year is present' do
    @car.year = 2019
    expect(@car).to be_valid
  end

  it 'Year to be invalid' do
    @car.year = nil
    expect(@car).to_not be_valid
  end

  it 'check aircon is present & to be false' do
    @car.aircon = true
    expect(@car).to be_valid
  end

  it 'has price and not nil' do
    @car.price = '18.00'
    expect(@car).to be_valid
  end

  it 'has description and not nil' do
    @car.description = 'some'
    expect(@car).to be_valid
  end

  it 'check is instance' do
    @car = Car.new(user: @user, model: 'Ford', make: 'Some', image: 'photo.jpg', color: 'red', seat: 4, year: 2019,
                   engine: 'automatic', aircon: 'false', price: '18.00', description: 'some')
    expect(@car).to be_an_instance_of(Car)
  end

  it 'is invalid without valid attributes' do
    expect(Car.new).to_not be_valid
  end
end
