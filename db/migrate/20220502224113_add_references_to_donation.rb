class AddReferencesToDonation < ActiveRecord::Migration[7.0]
  def change
    add_reference :donations, :owner, null: false, foreign_key: { to_table: :users } # owners
    add_reference :donations, :customer, foreign_key: { to_table: :users } # customers
  end
end
