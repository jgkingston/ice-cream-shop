module OrdersHelper

  def to_money number
    "$ #{sprintf( "%0.02f", number)}"
  end

  def remove_item_action order, item
    if order.complete == false
      link_to "Remove", order_item_path(order, item), method: :delete
    end
  end

  def apply_discount_action order, item
    discount = item.product.try(:discount)
    if discount && item.discount == 0 && order.complete == false
      link_to "Apply Discount", discount_order_item_path(@order, item)
    end
  end

end
