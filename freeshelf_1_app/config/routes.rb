Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'

  resources :books
  resources :checkout
  resources :users

  resource :logins
  get 'login', to: 'logins#new'
  get 'logout', to: 'logins#destroy', as: 'logout'

  root 'books#index'
end
