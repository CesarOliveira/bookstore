class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    create_model(Category, category_params)
  end

  def update
    update_model(@category, category_params)
  end

  def destroy
    destroy_model(@category, categories_url)
  end

  private

    def set_category
      @category = Category.find_by(id: params[:id])

      head :not_found unless @category
    end

    def category_params
      params.require(:category).permit(:name, :description)
    end
end
