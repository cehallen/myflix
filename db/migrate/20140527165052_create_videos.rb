class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :large_cover_url, null: false
      t.string :small_cover_url, null: false

      t.timestamps
    end
  end
end
