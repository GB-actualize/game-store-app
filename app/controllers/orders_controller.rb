class OrdersController < ApplicationController
  def new
  end

  def create
        @order = Order.create(user_id: params[:user_id],
                             quantity: params[:quantity],
                              game_id: params[:game_id])

    flash[:success] = @order.message
    redirect_to "/games"
  end
end
