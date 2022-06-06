class AddReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :donations, :customer, null: true, foreign_key: { to_table: :users } # customers
  end
end
