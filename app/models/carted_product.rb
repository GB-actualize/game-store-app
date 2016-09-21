class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true
  belongs_to :game

  def subtotal
    game.price * quantity
  end
end
