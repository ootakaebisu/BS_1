Rails.application.routes.draw do
  root 'users#top'
  devise_for :users
  resources :users, only: [:show]
  resources :books, only: [:index, :show] do
    resources :book_comments, only: [:create, :destroy]
    resource :check_books, only: [:create, :destroy]
    resource :finish_books, only: [:create,:destroy]
  end
  resources :authors, only: [:index, :show] do
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
