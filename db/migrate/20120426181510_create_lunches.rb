class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
