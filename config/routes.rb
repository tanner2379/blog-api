Rails.application.routes.draw do
  concern :api_base do
    resources :posts, except: [:index]
    post :getposts, to: "posts#index"
    resources :sessions, only: [:create]
    resources :registrations, only: [:create, :update, :destroy]
    delete :logout, to: "sessions#logout"
    get :logged_in, to: "sessions#logged_in"
    post :searchpost, to: "posts#search"
  end

  namespace :api do
    namespace :v1 do
      concerns :api_base
    end
  end

end
