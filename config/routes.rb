Lunch::Application.routes.draw do
  devise_for :users

  root :to => "public#index"

  resources :users
  resources :restaurants
end
