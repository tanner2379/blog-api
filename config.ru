# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'rack/cors'

use Rack::Cors do
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
run Rails.application
Rails.application.load_server
