class BooksController < ApplicationController
  def show
  end

  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :photo, :author, :description, :year, :pages)
  end

end
