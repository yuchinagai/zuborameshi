class HardsController < ApplicationController
  before_action :set_variables

  def hard
    hard = current_user.hards.new(recipe_id: @recipe.id)
    hard.save
  end

  def unhard
    hard = current_user.hards.find_by(recipe_id: @recipe.id)
    hard.destroy
  end

  private

  def set_variables
    @recipe = Recipe.find(params[:recipe_id])
    @id_name = "#hard-link-#{@recipe.id}"
  end

end