class SuppliersController < ApplicationController
  def show
    @supplier = Supplier.find_by(id: params["id"])
    render :show
  end

  def index
    @suppliers = Supplier.all
    render :index
  end

  def create
    @supplier = Supplier.create(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    # @supplier.save
    # render :show
    if @supplier.valid?
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.update(
      name: params["name"] || @supplier.name,
      price: params["price"] || @supplier.price,
      image_url: params["image_url"] || @supplier.image_url,
      description: params["description"] || @supplier.description,
    )
    if @supplier.valid?
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy
    render json: { message: "data deleted" }
  end
end
