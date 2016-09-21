class Game < ActiveRecord::Base

  belongs_to :supplier
  has_many :category_games
  has_many :images
  has_many :carted_products
  has_many :categories, through: :category_games
  has_many :orders, through: :carted_products
  has_many :users, through: :carted_products
  
  def sale_message
    if price < 35
      "Discount item!"
    else
      "Full-Priced Game"
    end
  end
  
  def tax
    price*0.09
  end

  def total
    ((price*0.09) + price)
  end

  def first_image
    images.first.url
  end

  def customer
    current_user.name
  end

end


