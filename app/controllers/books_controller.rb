class BooksController < ApplicationController
  include LikeHelper

  before_action :set_book, only: [:show, :edit, :update, :destroy, :like]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    create_model(Book, book_params)
  end

  def update
    update_model(@book, book_params)
  end

  def destroy
    destroy_model(@book, books_url)
  end

  def like
    like_book(@book)
    render :show, status: :ok
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end


    def book_params
      params.require(:book).permit(:name, :description, :author, :price, :category_id)
    end
end
