class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.integer :city_id
      t.string :date
      t.string :time
      t.text :belongings
      t.text :note
      t.string :contact_id

      t.timestamps null: false
    end
  end
end
