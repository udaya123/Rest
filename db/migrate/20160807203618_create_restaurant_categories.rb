class CreateRestaurantCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_categories do |t|
      t.string :restaurant_id_integer
      t.integer :category_id

      t.timestamps
    end
  end
end
