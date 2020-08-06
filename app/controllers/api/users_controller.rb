class Api::UsersController < ApplicationController
  
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone: params[:phone],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      postal_code: params[:postal_code],
      booking_id: params[:booking_id],
      card_number: params[:card_number],
      exp_date: params[:exp_date],
      cvc: params[:cvc],
    )
    render "index.json.jb"
  end



end
