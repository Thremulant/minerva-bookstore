class Order < ApplicationRecord
  # has_and_belongs_to_many :books
  belongs_to :order_state
  belongs_to :customer
  has_many :books_orders
end
