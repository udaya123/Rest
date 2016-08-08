class Restaurant < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :restaurants_users
has_many :users, through: :restaurants_users
end
