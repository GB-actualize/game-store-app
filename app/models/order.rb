class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products

  def calculate_subtotal
    @carted_products.each do |carted_product| 
      self.subtotal += carted_products.game.price * carted_products.quantity
    end
  end

  def calculate_tax
    self.tax = carted_products.subtotal * 0.09
  end
 
  def calculate_total
    self.total = carted_products.subtotal + tax
  end

  def message
    # "Order No. #{id} has been created. #{carted_product.quantity} of #{game.title}, with ID # #{game_id} has been created.
    #  Your subtotal is $#{subtotal} and your total is $#{total}. Thank you #{user.name}!"
    "Order created!"
  end

  def find_game_title
    @game = @order.user.game
  end
  
end
