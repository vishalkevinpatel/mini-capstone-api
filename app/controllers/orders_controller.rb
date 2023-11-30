class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    pp "ALL GOOD"

    calculated_subtotal = 0
    pp calculated_subtotal

    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity.to_f * carted_product.product.price.to_f
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    pp calculated_subtotal
    pp calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.save #happy path
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
    else #sad path
      render json: { errors: @order.errors.full_message }
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
