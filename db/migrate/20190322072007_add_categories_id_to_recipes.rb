class AddCategoriesIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :category, foreign_key: true, index: true, after: :point
  end
end
