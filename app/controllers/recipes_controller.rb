class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to @recipe, notice: "レシピを登録しました。"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :material, :body, :point)
  end
end
