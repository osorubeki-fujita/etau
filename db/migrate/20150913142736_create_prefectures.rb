class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string :name_ja
      t.string :name_hira
      t.string :name_en
      t.string :latitude
      t.string :longitude
      t.integer :population
      t.string :url
      t.string :twitter
      t.string :tel
      t.string :wikipedia

      t.timestamps null: false
    end
  end
end
