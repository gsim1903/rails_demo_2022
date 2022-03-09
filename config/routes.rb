Rails.application.routes.draw do
  namespace :api do
    resources :pings, only: [:index]
    resources :articles, only: [:index, :show, :create]
    #get :articles, controller: :articles, action: :index 
    #get :articles, controller: :articles, action: :show
  end
end
