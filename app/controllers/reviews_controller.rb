class ReviewsController < ApplicationController
  def new
    # we need @book in our `simple_form_for`
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book = @book
    @review.save
    redirect_to book_path(@book)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
