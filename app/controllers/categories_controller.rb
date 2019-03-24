class CategoriesController < ApplicationController
  def show
    @recipes = Recipe.where(category_id: params[:id])
  end

  def index
    @categories = Category.all
  end
end