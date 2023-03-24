class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name, null:  false
      t.string :genre, null:  false
      t.string :food, null:  false
      t.string :quantity, null:  false
      t.string :content, null:  false
      t.timestamps
    end
  end
end
