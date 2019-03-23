class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body, null: false, length: 140
      t.integer :evaluation, null: false
      t.references :recipe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :reviews, [:recipe_id, :user_id], unique: true
  end
end
