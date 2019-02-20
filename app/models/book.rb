class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  has_one_attached :image
  has_one_attached :file
end
