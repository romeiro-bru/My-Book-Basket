Rails.application.routes.draw do
  get 'books/show'
  get 'books/index'
  get 'books/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :book, only: [:show, :index, :new, :create]
end
