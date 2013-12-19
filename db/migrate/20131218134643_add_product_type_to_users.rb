class AddProductTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :product_type, :string
  end
end
