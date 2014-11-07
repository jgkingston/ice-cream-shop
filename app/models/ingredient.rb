class Ingredient < ActiveRecord::Base

  has_many :selections
  has_many :items, through: :selections

end
