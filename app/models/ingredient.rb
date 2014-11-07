class Ingredient < ActiveRecord::Base

  has_many :selections
  has_many :items, through: :selections

  def display
    "#{self.description.humanize} #{self.category.humanize}"
  end

end
