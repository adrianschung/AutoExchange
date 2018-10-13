class VehiclesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @vehicles = Vehicle.search(params[:term])
  end

  def automobiles
    @vehicles = Vehicle.where(type: 'Automobile')
    render "vehicles/index"
  end

  def boats
    @vehicles = Vehicle.where(type: 'Boat')
    render "vehicles/index"
  end

  def motorcycles
    @vehicles = Vehicle.where(type: 'Motorcycle')
    render "vehicles/index"
  end

  def show
    @vehicle = current_vehicle
    @photo = Photo.new
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = current_user.vehicles.create(vehicle_params)
    redirect_to vehicles_path(@vehicle)
  end

  def update
    current_vehicle.update_attributes(lesson_params)
    redirect_to vehicles_path(current_vehicle)
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:type, :make, :model, :color, :year, :mileage, :price, :description, :term)
  end

  def current_vehicle
    @current_vehicle ||= Vehicle.find(params[:id])
  end
end
