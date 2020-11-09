Rails.application.routes.draw do
    
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :students, only: [:new, :create, :index]
    
    
  root 'home#index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
    
  get 'students/index'
    
  #get 'students/new'
    
    
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  #get 'addnew', to: 'students#new', as: 'addnew'
  #get 'students', to: 'students#index', as: 'students'
  
end