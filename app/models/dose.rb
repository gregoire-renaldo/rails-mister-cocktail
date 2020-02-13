class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # validates_associated :cocktail_id, :ingredient_id , uniqueness: true

  # A dose must have a description, a cocktail and an ingredient,
  #  and [cocktail, ingredient] pairings should be unique.
  # is unique for a given cocktail/ingredient couple (FAILED - 3)
end
