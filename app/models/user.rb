class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # AS OWNER
  has_many :owned_donations, foreign_key: :owner_id, class_name: "Donation"

  # AS CUSTOMER
  has_many :claimed_bookings, foreign_key: :customer_id, class_name: "Donation"
end
