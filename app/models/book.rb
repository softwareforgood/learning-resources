class Book < ApplicationRecord
  validates :title, :author, presence: true

  has_one_attached :cover_picture
end
