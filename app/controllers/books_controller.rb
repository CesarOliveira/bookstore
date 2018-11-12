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
    respond_to do |format|
      if like_book(@book)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:name, :description, :author, :price, :category_id)
    end
end
