class CartedProductsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.valid?
      render json: { message: "yay" }
    else
      render json: { erros: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    if @carted_products != []
      render :index
    else
      render json: { message: "ayo put something in your cart" }
    end
  end
end
