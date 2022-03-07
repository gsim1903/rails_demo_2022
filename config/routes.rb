Rails.application.routes.draw do
  namespace :api do
    # resources :pings, only: [:index]
    get "pings", controller: :pings, action: :index
  end
end
