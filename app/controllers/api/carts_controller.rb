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

  def show 
    @cart = Cart.find_by(id: params[:id])
    render "show.json.jb"
  end

  
end
