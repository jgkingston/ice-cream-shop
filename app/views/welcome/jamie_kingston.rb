class Order

  @@list_of_orders = []
  @@available_products = ['cone', 'shake', 'float']
  attr_accessor :number
  attr_accessor :total
  attr_accessor :items

  def initialize

    self.total = 0.0
    self.items = []

  end

  def self.add_order
    order = Order.new
    @@list_of_orders.push order
  end

  def add_item
    
    item = select_item

  end

  def select_product
    
    valid = false

    while valid == false
      puts "Enter 'Cone', 'Shake' or 'Float'."
      reponse = gets.downcase.chomp

      if @@available_products.include?(response)
        valid = true
      end

    end



  end

end

class Item

  attr_accessor :price
  attr_accessor :flavor
  attr_accessor :flavors

end

class Cone < Item

  def pick_flavors



  end

end

class Shake < Item

end

class Float < Item

end