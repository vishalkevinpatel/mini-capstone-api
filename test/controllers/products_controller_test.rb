require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @user = User.create(name: "Admin", email: "admin@admin.com", password: "pass", admin: true)
  #   post "/sessions.json", params: { email: "admin@admin.com", password: "pass" }
  #   data = JSON.parse(response.body)
  #   @jwt = data["jwt"]
  # end

  # test "the truth" do
  #   assert true
  # end
  # test "index" do
  #   get "/products.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal Product.count, data.length
  # end

  # test "show" do
  #   get "/products/#{Product.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "name", "price", "image_url", "description", "created_at", "updated_at"], data.keys
  # end

  # test "create" do
  #   assert_difference "Product.count", 1 do
  #     post "/products.json", params: { name: "test product", price: 1, image_url: "image.jpg", description: "test description" }
  #   end
  # end

  # test "update" do
  #   product = Product.first
  #   patch "/products/#{product.id}.json", params: { name: "Updated name" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated name", data["name"]
  # end

  # test "destroy" do
  #   assert_difference "Product.count", -1 do
  #     delete "/products/#{Product.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
  #     assert_response 200
  #   end
  # end
end
