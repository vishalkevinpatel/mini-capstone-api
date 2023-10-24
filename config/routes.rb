Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/product", controller: "products", action: "product"
  get "/products", controller: "products", action: "product_all"
  get "/rando", controller: "products", action: "sample3"
end
