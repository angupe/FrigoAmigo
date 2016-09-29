class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :food_id
      t.integer :meal_id
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
