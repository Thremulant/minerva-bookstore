class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :books_orders, :dependent => :delete_all
  # has_and_belongs_to_many :orders

  validates :name, presence: true
  # validates_uniqueness_of :name
  # validates :price, :pages, numericality: true
end
