class CartsController < ApplicationController


  def new
  end

  def create
  end

  def show

    @cart = current_user.current_cart
    binding.pry
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def checkout
  end
end
