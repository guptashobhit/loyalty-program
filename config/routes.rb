Rails.application.routes.draw do
  resources :user_rewards
  resources :rewards
  resources :points
  resources :spends
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
