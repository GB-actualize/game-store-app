 class GamesController < ApplicationController
  
  before_action :authenticate_admin!, except: [:index, :show]


  def index
    @games = Game.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_level = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

  
    if category
      @games = Category.find_by(name: category).games
    end

    if search_term
      fuzzy = "%#{search_term}%"
      @games = @games.where("title LIKE ?", fuzzy)
    end

    if discount_level
      @games = @games.where("price < ?", discount_level) 
    end

    if sort_attribute && sort_order
      @games = Game.order(sort_attribute => sort_order)
    elsif sort_attribute
      @games = @games.order(sort_attribute)
    end


  end
  
  def new

  end

  def show
    if params[:id] == "random"
      @game = Game.all.sample
    else 
      @game = Game.find(params[:id])
      @supplier = @game.supplier
    end

    @categories = @game.categories


  end

  def create
      @game = Game.create(title: params[:title],
                            price: params[:price],
                            genre: params[:genre],
                     availability: params[:availability],
                      supplier_id: params[:supplier][:supplier_id])

      @image = Image.create(url: params[:image], game_id: :game_id)
      flash[:success] = "Game made"  

  end

  def edit
    @game = Game.find(params[:id])
  end

  def update

      @game = Game.find(params[:id])


  end

  def destroy

      @game = Game.find(params[:id])
      @game.destroy

      flash[:success] = "And it's gone"

  end

  def random
    random_game = Game.all.sample

    redirect_to "/games/#{random_game.id}"
  end
end
