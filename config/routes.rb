Rails.application.routes.draw do
  get '/signin', to: 'sessions#new'

  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy', as: 'log_out'

  resources :admins
  resources :locations
  resources :courses
  resources :instructors
  resources :students

  root 'welcome#index'

end
