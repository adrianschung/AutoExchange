class VehiclesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = current_user.vehicles.create(vehicle_params)
    redirect_to vehicles_path(@vehicle)
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:type, :make, :model, :color, :year, :mileage, :price, :description)
  end
end
