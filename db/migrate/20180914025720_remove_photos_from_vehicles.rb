class RemovePhotosFromVehicles < ActiveRecord::Migration[5.2]
  def change
    remove_column :vehicles, :photos
  end
end
