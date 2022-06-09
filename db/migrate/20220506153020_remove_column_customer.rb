class RemoveColumnCustomer < ActiveRecord::Migration[7.0]
  def change
    remove_column :donations, :customer_id
  end
end
