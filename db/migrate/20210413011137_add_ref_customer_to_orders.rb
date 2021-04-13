class AddRefCustomerToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :customer_id, :reference
  end
end
