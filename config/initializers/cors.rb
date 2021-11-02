require 'rack/cors'

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://www.highsoaringministries.herokuapp.com",
      "http://www.highsoaringministries.herokuapp.com",
      "https://highsoaringministries.herokuapp.com",
      "http://www.highsoaringministries.herokuapp.com",
      "secret-melon-nagt1bephe8j9m5gs1g4h27u.herokudns.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end
end
