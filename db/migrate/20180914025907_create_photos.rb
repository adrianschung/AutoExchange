class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :vehicle_id
      t.timestamps
    end
  end
end
