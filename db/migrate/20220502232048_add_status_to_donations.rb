class AddStatusToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :status, :integer, default: 0, null: false
  end
end
