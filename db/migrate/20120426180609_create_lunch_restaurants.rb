class CreateLunchRestaurants < ActiveRecord::Migration
  def change
    create_table :lunch_restaurants do |t|
      t.integer :lunch_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
