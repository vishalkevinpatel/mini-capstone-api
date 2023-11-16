class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def price
    product.price
  end
end
