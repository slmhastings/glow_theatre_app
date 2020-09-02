class Api::UsersController < ApplicationController
  
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def create
    user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      # phone: params[:phone],
      # address: params[:address],
      # city: params[:city],
      # state: params[:state],
      # postal_code: params[:postal_code],
      # booking_id: params[:booking_id],
      # card_number: params[:card_number],
      # exp_date: params[:exp_date],
      # cvc: params[:cvc]
    )
    if user.save 
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
