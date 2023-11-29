class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    if current_user
      product = Product.find(params["product_id"])

      caclulated_subtotal = product.price * params["quantity"].to_i
      caclulated_tax = product.tax * params["quantity"].to_i
      caclulated_total = product.total * params["quantity"].to_i

      @order = Order.create(
        user_id: current_user.id,
        product_id: params["product_id"],
        quantity: params["quantity"],
        subtotal: caclulated_subtotal,
        tax: caclulated_tax,
        total: caclulated_total,
      )
      render :show
    else
      render json: { message: "this isn't working" }
    end
  end

  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
