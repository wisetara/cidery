class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :place_name, null: false, default: ""
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :email
      t.string :URL
      t.text :tour_tasting_days_hours
      t.text :tour_tasting_info
      t.text :general_info
      t.float :map_info_lat
      t.float :map_info_lng
      t.boolean :cidery
      t.boolean :meadery
      t.boolean :winery

      t.timestamps
    end
  end
end
