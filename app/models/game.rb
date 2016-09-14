class Game < ActiveRecord::Base

  belongs_to :supplier
  has_many :images
  
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

end


