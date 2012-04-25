Lunch::Application.routes.draw do
  devise_for :users

  root :to => "application#index"

  resources :users
  resources :restaurants
end
