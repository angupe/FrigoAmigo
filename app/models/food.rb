class Food < ApplicationRecord
  has_many :ingredients
  has_many :meals, through: :ingredients

  scope :name_like, -> (name) { where("name ilike ?", name)}

end
