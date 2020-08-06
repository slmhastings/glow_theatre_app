class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
    )
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

end
