class Book < ApplicationRecord
  has_many :reviews

  validates :title, :author, presence: true

  has_one_attached :cover_picture

  def average_rating
    # we will round to the nearest integer - we assign the result to a variable
    # here so if we need to call it on the same book multiple times, we don'e have
    # to recalculate it. But, this still does the calculation in every request
    # if we noticed this was slowing down our application, we could make an actual db_column called
    # average_rating and make sure a book recalculates it every time a review changes

    @average_rating ||= reviews.average(:rating).round
  end

  def ratings_count
    # returns a hash of how many ratings in each number
    # { rating: count_of_how_many }
    # { 1: 10, 2: 4, 3: 10, 4: 10, 5: 20}
    # ha, thought you would have to write a bunch of hash math for this huh?

    @ratings_count ||= reviews.order(:rating).group_by(&:rating).transform_values(&:count)
  end
end
