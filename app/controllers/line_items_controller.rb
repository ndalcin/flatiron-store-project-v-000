class LineItemsController < ApplicationController
  

  def create

    if current_user.current_cart
      current_cart.add_item(params[:item_id]).save
    else
      current_cart = current_user.create_current_cart
      current_cart.user = current_user
      current_cart.save
      current_cart.add_item(params[:item_id]).save
    end
    binding.pry
    redirect_to cart_path(current_user.current_cart)
  end
end
