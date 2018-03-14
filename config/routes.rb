Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'reservations#index'

  get '/login', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout

  #resources :users
end
