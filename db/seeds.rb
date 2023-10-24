# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

products = Product.create({ name: "Spoon", price: 10, image_url: "www.google.com", description: "spoon" })
products = Product.create({ name: "Cutting Board", price: 30, image_url: "www.google.com", description: "cutting board" })
