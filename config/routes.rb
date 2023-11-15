Rails.application.routes.draw do
  get "/products/:id" => "products#show"
  get "/products", controller: "products", action: "index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers", controller: "suppliers", action: "index"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  get "/images" => "images#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
end
