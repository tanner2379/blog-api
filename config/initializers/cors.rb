require 'rack/cors'

Rails.application.config.hosts << ".highsoaringministries-api.herokuapp.com"
Rails.application.config.hosts << ".highsoaringministries.com"
Rails.application.config.hosts << ".highsoaringministries.herokuapp.com"

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://www.highsoaringministries.herokuapp.com",
      "http://www.highsoaringministries.herokuapp.com",
      "https://highsoaringministries.herokuapp.com",
      "http://www.highsoaringministries.herokuapp.com",
      "https://highsoaringministries.com",
      "http://highsoaringministries.com",
      "https://www.highsoaringministries.com",
      "http://www.highsoaringministries.com",
      "secret-melon-nagt1bephe8j9m5gs1g4h27u.herokudns.com",
      "http://localhost:3000"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
  end
end
