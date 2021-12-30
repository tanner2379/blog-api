SecureHeaders::Configuration.default do |config|
  config.cookies = {
   samesite: {
    none: true
   }
  }
end

if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_session_id", domain: "https://www.highsoaringministries.com", same_site: :none
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end
