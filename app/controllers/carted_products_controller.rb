class CartedProductsController < ApplicationController

  def index
    @carted_products = CartedProduct.all

    @carted_product = CartedProduct.where("user_id = ? AND status = ?", current_user.id, "carted")
  end
    

  def create
    @game = Game.find(params[:game_id])


    @carted_product = CartedProduct.create(user_id: current_user.id,
      game_id: params[:game_id],
      order_id: params[:order_id],
      quantity: params[:quantity].to_i,
      status: "carted"  )   
  end



end
