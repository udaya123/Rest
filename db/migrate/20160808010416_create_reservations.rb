class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :email
      t.datetime :requested_date_time
      t.string :message
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
