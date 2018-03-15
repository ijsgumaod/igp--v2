Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'reservations#index'

  post 'auth_user', to: 'sessions#authenticate_user'

  get '/login', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout
  get '/reservations', to: 'reservations#index', as: :reservations

  #resources :users
end
