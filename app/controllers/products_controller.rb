class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    @products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    render :index
    pp current_user
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      supplier_id: params["supplier_id"],
      description: params["description"],
      inventory: params["inventory"],
    )
    # @product.save
    # render :show
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      supplier_id: params["supplier_id"] || @product.supplier_id,
      description: params["description"] || @product.description,
      inventory: params["inventory"] || @product.inventory,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "data deleted" }
  end
end
