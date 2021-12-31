if Rails.env == "development"
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", secure: true
end
