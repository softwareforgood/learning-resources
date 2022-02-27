require 'faker'
require 'open-uri'

def book_title
  Faker::Book.title
end

def book_author
  Faker::Book.author
end

def book_genre
  Faker::Book.genre #=> "Mystery"
end

def book_description
  Faker::Lorem.paragraph(sentence_count: rand(3..5), supplemental: false, random_sentences_to_add: 4)
end

def book_cover
  Faker::LoremFlickr.image(size: "480x480", search_terms: ['book', 'cover'], match_all: true)
end

until Book.count >= 10
  puts "Creating book"
  Faker::UniqueGenerator.clear
  book = Book.create!(title: book_title, author: book_author, genre: book_genre, description: book_description)
  picture = URI.open(book_cover)
  book.cover_picture.attach(io: picture, filename: "#{book.title}_cover.png", content_type: 'image/png')
  book.save
end
puts "Creating reviews..."
Book.all.each do |buk|
  next unless book.reviews.empty?

  rand(5..30).times do
    attrs = { rating: rand(1..5), reviewer: Faker::Name.name, review_text: Faker::Lorem.paragraphs(5).join("\n") }
    buk.reviews.create!(attrs)
  end
end
puts "Reviews done! Books: #{Book.count}, Reviews: #{Review.count}"
