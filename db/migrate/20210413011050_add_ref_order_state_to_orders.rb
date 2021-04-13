class AddRefOrderStateToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :order_state_id, :reference
  end
end
