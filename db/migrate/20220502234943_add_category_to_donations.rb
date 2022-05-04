class AddCategoryToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :category, :string
  end
end
