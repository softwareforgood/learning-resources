class ReviewsController < ApplicationController
  before_action :load_book

  def index
    @scopes = scopes_from_params
    @scopes << :most_recent if @scopes.empty?

    @reviews = @book.reviews.public_send(*@scopes)
  end

  private

  def index_params
    params.permit(:book_id, :order)
  end

  def scopes_from_params
    return [] unless index_params[:order]

    order_param_string = index_params[:order].to_s
    Review::SCOPES.select { |scope| order_param_string.include?(scope.to_s) }
  end

  def load_book
    @book = Book.find(index_params[:book_id])
  end
end
