class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name_ja
      t.string :name_hira
      t.string :name_en
      t.integer :city_category_id
      t.string :latitude
      t.string :longitude
      t.string :url
      t.string :twitter
      t.string :wikipedia
      t.integer :population

      t.timestamps null: false
    end
  end
end
