class RemoveNullfalseFromVideoImageUrls < ActiveRecord::Migration
  def up
    change_column :videos, :small_cover_url, :string
    change_column :videos, :large_cover_url, :string
  end

  def down
    change_column :videos, :small_cover_url, :string, null: false
    change_column :videos, :large_cover_url, :string, null: false
  end
end
