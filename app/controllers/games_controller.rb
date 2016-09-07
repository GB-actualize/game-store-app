class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  
  def new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.create(title: params[:title],
                        price: params[:price],
                        genre: params[:genre],
                 availability: params[:availability])
    flash[:success] = "Game made"
    redirect_to "/games/#{@game.id}"
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(title: params[:title],
                 price: params[:price],
                 genre: params[:genre],
          availability: params[:availability])
    flash[:edit] = "Game altered"
    redirect_to "/games/#{@game.id}"
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    flash[:warning] = "And it's gone"
    redirect_to '/games'

  end
end
