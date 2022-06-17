class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy]
  before_action :authorize_request, except: %i[index show]

  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created
    else
      render json: { errors: @car.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    if @car.destroy
      render json: { message: 'Car has been successfully deleted' }
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:make, :model, :description, :color, :image, :year, :engine, :seat, :aircon, :price,
                                :user_id)
  end
end
