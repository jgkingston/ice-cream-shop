class Selection < ActiveRecord::Base

  belongs_to :ingredient
  belongs_to :item

  accepts_nested_attributes_for :ingredient
end
