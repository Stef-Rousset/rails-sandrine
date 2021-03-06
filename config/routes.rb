Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :galleries, only: [:index]  do
    resources :art_pieces, only: [:index, :new, :create, :edit, :update ]
  end
  resources :art_pieces, only: [:destroy]
  resources :contacts, only: [:new, :create]
end
