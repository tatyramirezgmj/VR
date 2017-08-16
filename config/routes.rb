Rails.application.routes.draw do
  root 'users#new'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  resource :sessions
  resources :users
end
