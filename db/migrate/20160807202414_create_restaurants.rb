class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :Name
      t.string :Address
      t.string :Phonenumber

      t.timestamps null: false
    end
  end
end
