class OrdersController < ApplicationController

  before_action :find_order, only: [:show, :edit, :update, :destroy, :checkout]

  def index
    @orders = Order.all
    @order = Order.new
  end

  def show
    @products = Product.all
  end

  def new
    
  end

  def create
    @order = Order.create order_params
    if @order.save == true
      redirect_to order_path(@order)
      flash[:success] = "New order added."
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @order.update_attributes order_params
      redirect_to orders_path
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  def checkout
    @order.update_attributes(complete: true)
    redirect_to orders_path
  end

  private

  def find_order
    @order = Order.find params[:id]
  end

  def order_params
    params.require(:order).permit(:name)
  end

end
