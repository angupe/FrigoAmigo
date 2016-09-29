class Ingredient < ApplicationRecord
  belongs_to :food
  belongs_to :meal

#setter
  def name=(name)
    self.food_id = Food.where(name: name.downcase).first_or_create.id
  end

# getter
  def name
    name
  end

end
