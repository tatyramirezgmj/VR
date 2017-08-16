Rails.application.routes.draw do
  get 'games/index'

  get 'games/show'

  root 'users#new'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  resource :sessions
  resources :users
end
