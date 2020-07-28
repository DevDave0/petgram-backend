Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :posts
  resources :user_pets
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
