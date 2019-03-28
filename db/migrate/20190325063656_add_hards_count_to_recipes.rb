class AddHardsCountToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :hards_count, :integer
  end
end
