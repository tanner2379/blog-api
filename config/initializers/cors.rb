Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000"
    resource "*",
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "https://www.highsoaringministries.herokuapp.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "http://www.highsoaringministries.herokuapp.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "https://highsoaringministries.herokuapp.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "http://highsoaringministries.herokuapp.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "secret-melon-nagt1bephe8j9m5gs1g4h27u.herokudns.com"
    resource "*",
    headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end
end
