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
    price = 9
  end

  belongs_to :supplier
  # def supplier
  #   Supplier(find_by(id: supplier_id))
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end
end
