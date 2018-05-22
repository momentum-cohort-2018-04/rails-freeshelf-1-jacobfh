Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'

  resources :books

  root 'books#index'
end
