class Review < ApplicationRecord
  SCOPES = [:most_recent, :highest_rated, :lowest_rated]

  belongs_to :book
  validates :rating, presence: true, inclusion: { in: 1..5 }

  scope :most_recent, -> { order(created_at: :desc) }
  scope :highest_rated, -> { order(rating: :desc) }
  scope :lowest_rated, -> { order(rating: :asc) }

  def truncated_review
    review_text.truncate(150)
  end
end
