class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false, length: 50
      t.text :material, null: false
      t.text :body, null: false
      t.string :point
      t.integer :iine
      t.integer :muzukashiine

      t.timestamps
    end
  end
end
