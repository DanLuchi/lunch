class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :lunch_restaurant_id

      t.timestamps
    end
  end
end
