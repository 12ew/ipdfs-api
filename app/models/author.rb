class Author < ApplicationRecord
  has_many :books
  has_many :genres, through: :books
  belongs_to :user
end
