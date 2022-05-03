class Donation < ApplicationRecord

  belongs_to :owner, class_name: "User"
  belongs_to :customer, class_name: "User", optional: true

  enum status: { unclaimed: 0, claimed: 10 }

  validates :name, :category, presence: true
  validates :name, length: { maximum: 120 }

  def short_date(date)
    date.strftime("%a/%b/%Y")
  end
end
