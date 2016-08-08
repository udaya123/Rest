class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurant_categories, :restaurant_id_integer, :restaurant_id
    change_column :restaurant_categories, :restaurant_id, :integer
  end
end
