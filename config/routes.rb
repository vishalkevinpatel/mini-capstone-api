Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
end
