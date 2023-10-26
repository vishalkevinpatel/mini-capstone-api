Rails.application.routes.draw do
  get "/products/:id" => "products#show"
  get "/products", controller: "products", action: "index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
