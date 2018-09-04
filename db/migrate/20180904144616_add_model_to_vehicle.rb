class AddModelToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :description, :text
    add_column :vehicles, :modedl, :string
  end
end
