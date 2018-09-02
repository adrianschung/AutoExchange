class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :type, null: false
      t.string :make
      t.string :color
      t.integer :year
      t.integer :mileage
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
