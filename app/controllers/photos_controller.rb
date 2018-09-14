class PhotosController < ApplicationController
  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle.photos.create(photo_params)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture)
  end
end
