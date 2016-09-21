class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
    def index
      @carted_products = current_user.currently_carted
      # @carted_products = CartedProduct.where("user_id = ? AND status = ?", current_user.id, "carted")
    end
      

    def create
      @game = Game.find(params[:game_id])


      CartedProduct.create(user_id: current_user.id,
        game_id: params[:game_id],
        quantity: params[:quantity],
        status: "carted")

        flash[:success] = "item added to cart"
        redirect_to '/carted_products' 
    end



end
