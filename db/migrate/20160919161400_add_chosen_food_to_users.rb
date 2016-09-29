class AddChosenFoodToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :chosen_food, :string, array: true, default: []
  end
end
