Lunch::Application.routes.draw do
  root :to => "application#index"

  resources :users
  devise_for :users

  resources :restaurants
  match "/restaurants/:id/add" => "restaurants#add"
  match "/restaurants/:id/remove" => "restaurants#remove"
end