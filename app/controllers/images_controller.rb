class ImagesController < ApplicationController
  def create
    @image = Image.create(url: params[:url],
                      game_id: params[:game_id])

    flash[:success] = "Image added!"
    redirect_to '/games'
  end

end
