class Order < ActiveRecord::Base

  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, :allow_destroy => true
  
  def total
    total = 0.0
    items = self.items.includes(:product)
    if items.length > 0 
      prices = items.map { |item| item.product.price - item.discount}
      total = prices.reduce(:+)
    end
    total = to_money total
  end

  def to_money number
    "$ #{sprintf( "%0.02f", number)}"
  end

end
