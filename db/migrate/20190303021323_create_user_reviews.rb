class CreateUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reviews do |t|
      t.references :for_user, foreign_key: true
      t.references :by_user, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
