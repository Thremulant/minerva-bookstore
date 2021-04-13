class AddColumnsToBooksOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :books_orders, :book_price, :decimal, precision: 5, scale: 2
    add_column :books_orders, :pst, :decimal, precision: 5, scale: 2
    add_column :books_orders, :gst, :decimal, precision: 5, scale: 2
    add_column :books_orders, :hst, :decimal, precision: 5, scale: 2
  end
end
