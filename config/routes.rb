Rails.application.routes.draw do
  get '/signin', to: 'sessions#new'

  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy', as: 'signout'

  resources :admins
  resources :locations
  resources :courses
  resources :instructors
  resources :students

  post '/locations/:id', to: 'courses#remove', as: 'remove_course'

  post '/locations/:id', to: 'instructors#remove', as: 'remove_instructor'

  root 'welcome#index'

end
