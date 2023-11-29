class Category < ApplicationRecord
  has_many :category_products

  #creates new array for categories of whatever product currently viewing
  has_many :products, through: :category_products
  # def products
  #   category_products.map do |category_product|
  #     category_product.product
  #   end
  # end
end
