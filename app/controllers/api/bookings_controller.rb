class Api::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    render 'index.json.jb'
  end

  def create
    @booking = Booking.create(
      date: params[:date],
      user_id: params[:user_id],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
    render "show.json.jb"
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    render "show.json.jb"
  end

end
