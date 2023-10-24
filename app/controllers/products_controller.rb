class ProductsController < ApplicationController
  def product
    first = Product.first
    render json: (first)
  end

  def product_all
    all = Product.all
    render json: (all)
  end

  def sample3
    sample1 = Product.all
    sample2 = sample1.sample
    render json: (sample2)
  end

  def all_products
    @products = Product.all
    render :index
  end

  def one_product
    @product = Product.find_by(id: params["id"])
    render :show
  end
end
