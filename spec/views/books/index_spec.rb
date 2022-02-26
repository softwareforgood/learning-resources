require "rails_helper"

RSpec.describe "books/index" do
  before do
    assign(:books, [
             Book.create!(title: "untitled", author: "Jane Author"),
             Book.create!(title: "book title two", author: "Juan Autor"),
           ])
  end

  it "displays all the books" do
    render
    expect(rendered).to match(/untitled/)
    expect(rendered).to match(/Jane Author/)
    expect(rendered).to match(/book title two/)
    expect(rendered).to match(/Juan Autor/)
  end
end
