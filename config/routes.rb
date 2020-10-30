Rails.application.routes.draw do
  #get 'students/index'

  root :to => redirect('/students')
  resources :students
end