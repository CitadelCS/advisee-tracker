Rails.application.routes.draw do
    
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
    
  root 'home#index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
    
  get 'students/index'
    
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end