Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show]
end
