class RenameVehicleModelColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :vehicles, :modedl
    add_column :vehicles, :model, :string
  end
end
