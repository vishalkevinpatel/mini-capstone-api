User.create!([
  {name: "lyle", email: "lyle@lyle.com", password_digest: "$2a$12$O9U55NHpr7DGDALAC0NGeul1EGaUVPVdzW1grGEvKLSmpcYSdbCHG", admin: true},
  {name: "bobby", email: "bobby@email.com", password_digest: "$2a$12$QmUdeequjA/vtbSr6YBB.OJPFoswPDzktMMvBl7BftKu9K8m0QLmS", admin: true},
  {name: "kevin", email: "kevin@kevin.com", password_digest: "$2a$12$ENssxwdWnn7ebiab2yO29.Xigy9lM6FmbOn9HHJEbIEsXEqhZYgbi", admin: true},
  {name: "emily", email: "emily@emily.com", password_digest: "$2a$12$t7rdLxVVKyJTJlgBTAYsxeaVbvrfXZTIDlfdNHDFN5lwfMuRXUNdK", admin: true},
  {name: "bob", email: "bob@bob.com", password_digest: "$2a$12$nsTmzZ5GotOCHdCvMVA4Y.6eG5xJAvo4W3YeAVatYyvpUNgWBmbZO", admin: true},
  {name: "jo", email: "jo@jo.com", password_digest: "$2a$12$ZGRVqT326fJlpaN2hsp3W.ZOxCETXuaoyOvtoejmJtz/FSGYYa1eG", admin: true}
])
Supplier.create!([
  {name: "bob", email: "bob@uso.com", phone_number: "6108675309"},
  {name: "lyle", email: "lyle@uso.com", phone_number: "4848675309"}
])
Product.create!([
  {name: "Spoon", price: "10.0", description: "spoon", inventory: 10, supplier_id: 1},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "spaghetti", price: "300.0", description: "idk", inventory: 10, supplier_id: 1},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "christmas tree", price: "45.0", description: "christmas tree", inventory: 10, supplier_id: 2},
  {name: "Spoon", price: "10.0", description: "spoon", inventory: 10, supplier_id: 1},
  {name: "Spoon", price: "10.0", description: "spoon", inventory: 10, supplier_id: 1},
  {name: "scoop", price: "14.0", description: "its not a scoop", inventory: 10, supplier_id: 1},
  {name: "Cutting Board", price: "30.0", description: "cutting board", inventory: 10, supplier_id: 1},
  {name: "Puzzle", price: "30.0", description: "puzzle", inventory: 10, supplier_id: 1},
  {name: "Cutting Board", price: "35.0", description: "cutting board", inventory: 10, supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "45.0", tax: nil, total: "49.05"},
  {user_id: 1, subtotal: "45.0", tax: nil, total: "49.05"},
  {user_id: 1, subtotal: "45.0", tax: nil, total: "49.05"},
  {user_id: 1, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 1, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 1, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: nil, total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: nil, total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "45.0"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "45.0"},
  {user_id: 3, subtotal: "45.0", tax: "0.0", total: "0.0"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "45.0"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "135.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "135.0", tax: "4.05", total: "49.05"},
  {user_id: 3, subtotal: "30.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "30.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "10.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "10.0", tax: "9.0", total: "10.9"},
  {user_id: 3, subtotal: "10.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "30.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "10.9"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 3, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 4, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 5, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 5, subtotal: "135.0", tax: "12.15", total: "147.15"},
  {user_id: 6, subtotal: "45.0", tax: "4.05", total: "49.05"},
  {user_id: 6, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 6, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 6, subtotal: "225.0", tax: "20.25", total: "245.25"},
  {user_id: 6, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
Image.create!([
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 8},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 9},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 10},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 11},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 12},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 15},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 16},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 13},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=2048x2048&w=is&k=20&c=5Lhx96ujxx35zorGiZpmVirfvs9EpfBPvK7DX5xL1XA=", product_id: 17},
  {url: "https://www.pngmart.com/files/1/Wooden-Spoon-PNG-Clipart.png", product_id: 1},
  {url: "https://www.pngmart.com/files/1/Wooden-Spoon-PNG-Clipart.png", product_id: 2},
  {url: "https://www.pngmart.com/files/1/Wooden-Spoon-PNG-Clipart.png", product_id: 4},
  {url: "https://pngimg.com/uploads/spaghetti/spaghetti_PNG24.png", product_id: 19},
  {url: "https://www.woodcuttingboards.com/cms/controller/services/Thumbnail.ashx?width=595&fileName=/media/ecommerce_option.photo/CBU1069.png", product_id: 5},
  {url: "https://www.woodcuttingboards.com/cms/controller/services/Thumbnail.ashx?width=595&fileName=/media/ecommerce_option.photo/CBU1069.png", product_id: 3},
  {url: "https://www.uglyducklinghouse.com/wp-content/uploads/2019/04/DIY-wooden-elephant-puzzle-12.jpg", product_id: 6},
  {url: "https://www.burkedecor.com/cdn/shop/products/TKR12-GPS_1800x1800.jpg?v=1571713114", product_id: 18},
  {url: "https://i.etsystatic.com/21232771/r/il/07a850/2794057758/il_794xN.2794057758_fmnl.jpg", product_id: 4},
  {url: "https://media.istockphoto.com/id/1346236801/vector/vector-christmas-tree-isolated-on-transparent-background-beautiful-shining-christmas-tree.jpg?s=1024x1024&w=is&k=20&c=ogL-AbD0IisaUhGkK8kutohRnGBaiC7OcOTC9jPoo2Y=", product_id: 7}
])
CategoryProduct.create!([
  {product_id: 7, category_id: 1},
  {product_id: 8, category_id: 1},
  {product_id: 19, category_id: 2},
  {product_id: 19, category_id: 3},
  {product_id: 1, category_id: 2}
])
Category.create!([
  {name: "decor"},
  {name: "kitchen"},
  {name: "food"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 7, quantity: 1, status: "carted", order_id: 2},
  {user_id: 1, product_id: 7, quantity: 1, status: "carted", order_id: nil},
  {user_id: 1, product_id: 7, quantity: 1, status: "carted", order_id: 4},
  {user_id: 6, product_id: 7, quantity: 1, status: "purchased", order_id: 34},
  {user_id: 6, product_id: 7, quantity: 5, status: "purchased", order_id: 37},
  {user_id: 6, product_id: 7, quantity: 5, status: "carted", order_id: nil}
])
