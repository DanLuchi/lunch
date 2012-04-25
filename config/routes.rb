Lunch::Application.routes.draw do
  root :to => "public#index"

  resources :users
  resources :restaurants
end
