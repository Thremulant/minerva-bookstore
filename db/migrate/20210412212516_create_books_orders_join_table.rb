class CreateBooksOrdersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :orders
  end
end
