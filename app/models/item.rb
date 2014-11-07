class Item < ActiveRecord::Base

  belongs_to :order

  belongs_to :product

  has_many :selections
  has_many :ingredients, through: :selections

  accepts_nested_attributes_for :selections, :allow_destroy => true

end
