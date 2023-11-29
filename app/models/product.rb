class Product < ApplicationRecord
  # validates :name, presence: { message: "what??" }
  # validates :price, presence: true
  # validetes :name, uniqueness: true
  # validetes :price, numericality: { greater_than: 0 }
  # validetes :description, length: { in: 10..500 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    total = price * 1.09
  end

  # goes over to supplier table and finds supplier id, inside the product table (at one specific product), go to supplier table and find the supplier id that matches the product supplier id.  conversely works other way with "has_many :products"
  belongs_to :supplier
  # def supplier
  #   Supplier(find_by(id: supplier_id))
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders

  has_many :category_products
  # has_many :categories, through: :category_products

  def categories
    category_products.map do |category_product|
      category_product.category.name
    end
  end
end
