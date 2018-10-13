class PhotosController < ApplicationController
  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @photo = @vehicle.photos.create(photo_params)
    redirect_to vehicle_path(@vehicle)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture)
  end
end
