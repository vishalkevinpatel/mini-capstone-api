class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: "christmas tree",
      price: 45,
      image_url: "www.google.com",
      description: "christmas tree",
    )
    @product.save
    render :show
  end
end
