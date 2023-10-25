Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
