json.extract! reservation, :id, :email, :requested_date_time, :message, :restaurant_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)