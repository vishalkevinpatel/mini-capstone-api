Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "mini-capstone.peterxjang.com", "localhost:5173"
    origins "*"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put]
  end
end
