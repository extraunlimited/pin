class ProductsController < ApplicationController

  def index

    @products = Product.all


  end


  def show

    @product = Product.find(params[:id])

    #if already in cart
    @order_item = @current_cart.order_items.find_by(product: @product)


    if @order_item.nil?
      #if doesnt exist in cart
      @order_item = @current_cart.order_items.new(product: @product, quantity: 1)
    end


  end

end
