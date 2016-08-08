class ChangeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurant_categories, :restaurant_id, :integer
  end
end
