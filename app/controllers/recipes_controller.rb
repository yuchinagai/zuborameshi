class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.page(params[:page]).per(4)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "レシピを登録しました。"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, notice: "レシピを削除しました。"
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "レシピを更新しました。"
    else
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :material, :body, :point, :new_image, :category_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
