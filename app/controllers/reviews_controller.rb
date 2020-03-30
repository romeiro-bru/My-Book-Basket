class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    # we need @book in our `simple_form_for`
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book_id = @book.id
    @review.user_id = current_user.id

    if @review.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
