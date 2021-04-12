class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_and_belongs_to_many :orders
end
