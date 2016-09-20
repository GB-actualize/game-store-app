class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    game = Game.find(params[:game_id])

    @order = Order.new(
      user_id: current_user.id, 
      game_id: params[:game_id],
      quantity: params[:quantity].to_i)

    @order.calculate_subtotal
    @order.calculate_tax 
    @order.calculate_total
    
    @order.save

    flash[:success] = @order.message
    redirect_to "/orders/#{:id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
