class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    create_model(Book, category_params)
  end

  def update
    update_model(@book, book_params)
  end

  def destroy
    destroy_model(@book, books_url)
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end


    def book_params
      params.require(:book).permit(:name, :description, :author, :price, :category_id)
    end
end
