class AddChanges < ActiveRecord::Migration[7.0]
  def change
    rename_column :line_items, :store_id, :estore_id
  end
end
