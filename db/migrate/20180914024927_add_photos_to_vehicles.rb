class AddPhotosToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_index :photos, :vehicle_id
  end
end
