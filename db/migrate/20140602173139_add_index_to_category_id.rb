class AddIndexToCategoryId < ActiveRecord::Migration
  def change
    add_index :videos, :category_id
  end
end
