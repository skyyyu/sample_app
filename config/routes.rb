Rails.application.routes.draw do
  root "static#home"
  get  '/help',    to: 'static#help', as: 'helf'
  get '/about', to:'static#about'
  get '/contact', to:'static#contact'
  get '/signup',  to:'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/signup',  to:'users#new'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships,  only: [:create, :destroy]
end
