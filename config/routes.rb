Rails.application.routes.draw do

  # ACCUEIL
  get '/', to: 'home#index'

  # REGISTRATION
  get 'registration/new', to: 'registration#new'
  post 'registration/log', to: 'registration#log'

  # USER CREATION
  get '/user/new', to: 'users#new'
  post '/user/create', to: 'users#create'

  # WELCOME PAGE
  get '/user/home', to: 'users#user_welcome'

  # gossips
  get 'gossips/new', to: 'gossips#new'
  post 'gossips/create', to: 'gossips#create'
  get '/gossips/:gossip_id', to: 'gossips#gossips', as: 'gossips'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

end
