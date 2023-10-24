Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/product", controller: "products", action: "product"
  get "/products", controller: "products", action: "product_all"
  get "/rando" => "products#sample3"
  get "/all_products", controller: "products", action: "all_products"
  get "/one_product/:id" => "products#one_product"
end
