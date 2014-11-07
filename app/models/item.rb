class Item < ActiveRecord::Base

  belongs_to :order

  belongs_to :product

  has_many :selections
  has_many :ingredients, through: :selections

  accepts_nested_attributes_for :selections, :allow_destroy => true

  def display
    self.product.name.humanize
  end

  def display_price
    self.product.price - self.discount
  end

end
