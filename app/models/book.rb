class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  # has_many :orders, through: :books_orders
  has_and_belongs_to_many :books_orders

  validates :name, presence: true
  validates_uniqueness_of :name
  validates :price, :pages, numericality: true
end
