class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  has_one_attached :image
  has_one_attached :file

  validates :author_id, presence: true
  validates :genre_id, presence: true
  validates :eng_title, presence: true
  validates :arabic_title, presence: true
  validates :language, presence: true
  # validates :about, presence: true
end
