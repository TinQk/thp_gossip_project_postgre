Rails.application.routes.draw do
  # ACCUEIL
  get '/', to: 'home#index'

  # REGISTRATION
  get 'registration/new', to: 'registration#new'
  post 'registration/log', to: 'registration#log'

  # USER CREATION
  get '/user/new', to: 'users#new'
  post '/user/create', to: 'users#create'

  # DYNAMIC ROUTES
  get '/user/:user_name', to: 'users#user_welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

end
