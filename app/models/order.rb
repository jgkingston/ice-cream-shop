class Order < ActiveRecord::Base

  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, :allow_destroy => true
  
  def total
    total = 0.0
    if self.items.length > 0 
      prices = self.items.includes(:product).map { |item| item.product.price }
      total = prices.reduce(:+)
    end
    total = to_money total
  end

  def to_money number
    "$ #{sprintf( "%0.02f", number)}"
  end

end
