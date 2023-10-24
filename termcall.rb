require "http"
response = HTTP.get("http://localhost:3000/all_products.json")
data = response.parse
trim = data
trim.delete("id")
trim.delete("created_at")
trim.delete("updated_at")
pp trim
