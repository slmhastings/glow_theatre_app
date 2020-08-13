class Api::CartsController < ApplicationController
  
  def create
    @cart = Cart.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: params[:user_id],
      booking_id: params[:booking_id],
      status: params[:status]
    )
    render "show.json.jb"
  end    

  
end
