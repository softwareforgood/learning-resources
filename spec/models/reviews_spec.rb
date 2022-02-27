require "rails_helper"

RSpec.describe Review, type: :model do
  let(:book) {
    Book.create(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "A great book")
  }
  let(:review) {
    described_class.create(reviewer: "John Doe", review_text: "This is a great book", book: book, rating: 5)
  }

  it "belongs to a book" do
    expect(review.book).to eq book
  end

  it "is invalid without a rating" do
    review.rating = nil
    expect(review).not_to be_valid
  end

  it "is invalid without a rating less than one" do
    review.rating = 0
    expect(review).not_to be_valid
  end

  it "is invalid without a rating more than five" do
    review.rating = 6
    expect(review).not_to be_valid
  end

  it "is invalid without a rating that isn't a number" do
    review.rating = "A+"
    expect(review).not_to be_valid
  end

  it "is still valid without a reviewer" do
    review.reviewer = nil
    expect(review).to be_valid
  end

  it "is still valid without a review_text" do
    review.review_text = nil
    expect(review).to be_valid
  end

  it "can tell us a short form of it's review text that is truncated" do
    review.review_text = Faker::Lorem.paragraphs(10)
    shortened_review = review.truncated_review
    trunc = shortened_review.length
    expect(trunc < review.review_text.length && trunc == 150).to eq true
  end
end
