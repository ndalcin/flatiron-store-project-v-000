class CartsController < ApplicationController

  def checkout
    current_cart.line_items.each do |li|
      item = Item.find(li.item_id)
      bought = li.quantity
      inventory = item.inventory
      item.update(inventory: (inventory - bought))
    end
    current_cart.destroy
    redirect_to cart_path(current_cart)
  end

end
