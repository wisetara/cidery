class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.integer :user_id
      t.integer :location_id
      t.date :date_connected

      t.timestamps
    end
  end
end
