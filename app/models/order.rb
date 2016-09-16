class Order < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def calculate_subtotal
    self.subtotal = game.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end
 
  def calculate_total
    self.total = subtotal + tax
  end

  def message
    "Order No. #{id} has been created. #{quantity} of #{game.title}, with ID # #{game_id} has been created.
     Your subtotal is $#{subtotal} and your total is $#{total}. Thank you #{user.name}!"
  end
end
