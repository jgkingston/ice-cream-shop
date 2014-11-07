class ItemsController < ApplicationController

  before_action :load_order
  before_action :find_item, only: [:show, :edit, :update, :destroy]


  def new
    @item = Item.new
    @item.selections.build
    @product = Product.find params[:product_id]
  end

  def create
    @item = Item.create item_params
    if @item.save == true
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def destroy
    @item.destroy
    redirect_to order_path(@order)
  end

  private

  def load_order
    @order = Order.find params[:order_id]
  end

  def find_item
    @item = Item.find params[:id]
  end

  def item_params
    params.require(:item).permit(:order_id, :product_id, :price, selections_attributes: [:id, :item_id, :ingredient_id, :price, :_destroy])
  end

end
