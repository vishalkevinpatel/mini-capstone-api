class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products

  def price
    product.price
  end
end
