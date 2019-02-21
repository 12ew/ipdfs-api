class Author < ApplicationRecord
  has_many :books
  has_many :genres, through: :books

  validates :name, presence: true
  validates :bio, presence: true
  validates :yod, presence: true
end
