class Genre < ApplicationRecord
  has_many :books
  has_one_attached :image
end
