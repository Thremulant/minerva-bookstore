class Author < ApplicationRecord
  has_many :books

  validates :name
  validates_uniqueness_of :name
end
