class RemovePrefectures < ActiveRecord::Migration
  def change
    drop_table :prefectures
  end
end
