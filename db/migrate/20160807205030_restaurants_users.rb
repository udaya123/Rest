class RestaurantsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table(:restaurants_users) do |t|
      ## Database authenticatable
      t.integer :restaurant_id, index: true
      t.integer :user_id, index: true
  end
 end
end

