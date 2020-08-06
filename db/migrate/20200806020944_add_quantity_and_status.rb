class AddQuantityAndStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :quantity, :integer
    add_column :carts, :status, :string
  end
end
