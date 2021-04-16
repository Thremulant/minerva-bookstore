Rails.application.routes.draw do
  resources :genres
  resources :books
  resources :cart, only: %i[create destroy]
  root 'books#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
