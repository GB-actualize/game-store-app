class OrdersController < ApplicationController

  before_action :authenticate_user!

  def create
    @carted_products = current_user.currently_carted
    @order = Order.create(user_id: current_user.id)
    @carted_products.update_all(order_id: @order.id, status: "purchased")

    subtotal = 0 
    @carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.game.price
    end

    tax = subtotal * 0.09
    total = subtotal + tax


    flash[:success] = @order.message
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to '/games' if @order.user.id != current_user.id
  end
end
