Rails.application.routes.draw do
 
  resources :restaurant_categories
  resources :categories
  get 'sessions/new'

  #get 'home/index'

  
  root to: "home#index"
  devise_for :users
  resources :users do
    resources :restaurants
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
