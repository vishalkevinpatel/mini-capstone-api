class ProductsController < ApplicationController
  def product
    first = Product.first
    render json: (first)
  end
end
