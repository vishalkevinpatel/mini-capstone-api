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
end
