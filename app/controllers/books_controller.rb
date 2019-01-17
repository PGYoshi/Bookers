class BooksController < ApplicationController
  def show
  		@book = Book.find(params[:id])
  end

  def index
  		@books = Book.all
  end


  def top
	end

  def new
  		@book = Book.new
  end

  def edit
  		@book = Book.find(params[:id])
  end

  def update

  end

  def create
       @book = Book.new(book_params)
    if @book.save
    flash[:notice] = "Book was successfully created."
      redirect_to '/books'
    else
      render :new
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
