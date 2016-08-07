json.extract! restaurant, :id, :Name, :Address, :Phonenumber, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)