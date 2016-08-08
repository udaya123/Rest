class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :restaurants_users
         has_many :restaurants, through: :restaurants_users
         has_many :reservations
  def owner?
    role == 'owner'
  end

end

