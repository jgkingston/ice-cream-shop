class Product < ActiveRecord::Base

  has_many :items

  has_one :discount

end
