class Game < ActiveRecord::Base
  def sale_message
    if price < 2 
      "Discount item!"
    else
      "Full-Priced Game"
    end
  end
  
  def tax
    "$#{((price)*0.09)} is the tax."
  end

  def total
    "$#{(price*0.09) + price} is the total price."
  end

end


