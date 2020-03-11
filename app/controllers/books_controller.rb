class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  end

  def create
  	@book = Book.new(book_params)
  if @book.save
  	redirect_to '/books'
  else
  	@books = Book.all
  	render action: :index
  end
end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
