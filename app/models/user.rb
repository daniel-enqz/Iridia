class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # AS OWNER
  has_many :owned_donations, foreign_key: :owner_id, class_name: "Donation", dependent: :destroy

  # AS CUSTOMER
  has_many :claimed_donations, foreign_key: :customer_id, class_name: "Donation", dependent: :destroy
<<<<<<< HEAD

  def dashboard
    User::Dashboard.new(self)
  end
=======
>>>>>>> develop

  def owns?(donation)
    donation.owner == self
  end
end
