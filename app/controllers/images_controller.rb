class ImagesController < ApplicationController
 def index
    @images = image.all
  end

  def new
  end

  def show
    @image = image.find(params[:id])
  end

  def create
    @image = image.create(url: params[:url],
                      game_id: params[:game_id],
    redirect_to "/images"
  end

  def edit
    @image = image.find(params[:id])
  end
  
  def update
    @image = image.find(params[:id])
    @image.update(url: params[:url],
              game_id: params[:game_id],
  end

  def destroy
    @image = image.find(params[:id])
    @image.destroy

    redirect_to '/images'
  end
end
