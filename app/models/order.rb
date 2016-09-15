class Order < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def message
    "Your order of #{quantity} of #{game.title}, with ID # #{game_id} has been created."
  end
end
