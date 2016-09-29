class AddCategoryAndTimeAndDifficultyAndServesToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :category, :string
    add_column :meals, :time, :string
    add_column :meals, :difficulty, :string
    add_column :meals, :serves, :string
  end
end
