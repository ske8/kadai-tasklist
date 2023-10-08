Rails.application.routes.draw do
  get 'tasklists/create'
  get 'tasklists/destroy'
  #get 'toppages/index'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  root to: 'tasks#index'
  get 'login', to: 'sessions#new'  
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'

  resources :users
  resources :tasks
end
