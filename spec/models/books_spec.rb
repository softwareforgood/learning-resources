require "rails_helper"

RSpec.describe Book, type: :model do
  def active_storage_attachement
    ActiveStorage::Blob.create_and_upload!(
      io: File.open("spec/support/book_pic.png", "rb"),
      filename: "book_pic.png",
      content_type: "image/png",
    ).signed_id
  end
  let(:book) {
    described_class.new(title: "Tootle the Tugboat",
                        description: "A tug boat goes on a trip",
                        author: "Christopher Robin",
                        genre: "childrens")
  }

  it "is valid with valid attributes" do
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book.title = nil
    expect(book).not_to be_valid
  end

  it "is not valid without an author" do
    book.author = nil
    expect(book).not_to be_valid
  end

  it "is valid with a blank description or genre" do
    book.description = nil
    book.genre = nil

    expect(book).to be_valid
  end

  it "can have a cover picture" do
    book.cover_picture = active_storage_attachement
    expect(book.cover_picture).to be_attached
  end

  describe "reviews" do
    def create_reviews_for_book(book)
      (1..5).each do |rating|
        book.reviews.create!(rating: rating, reviewer: Faker::Name.name, review_text: Faker::Lorem.paragraphs(5))
      end
    end

    before do
      book.save && create_reviews_for_book(book)
    end

    it "has many reviews" do
      expect(book.reviews.count).to eq 5
    end

    it "can average it's own reviews" do
      expect(book.average_rating).to eq 3
    end

    it "can give us a frequency count of review ratings" do
      create_reviews_for_book(book)
      expect(book.ratings_count).to eq({ 1 => 2, 2 => 2, 3 => 2, 4 => 2, 5 => 2 })
    end
  end
end
