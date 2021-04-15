class Order < ApplicationRecord
  # has_and_belongs_to_many :books
  belongs_to :order_state
  belongs_to :customer
  # has_many :books, through: :books_orders_book_id
  has_and_belongs_to_many :books_orders

  accepts_nested_attributes_for :books_orders
end
