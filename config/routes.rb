Rails.application.routes.draw do
  get 'users/new'

  get 'user/new'

  root "static#home"
  get  '/help',    to: 'static#help', as: 'helf'

  get '/about', to:'static#about'

  get '/contact', to:'static#contact'

  get '/signup',  to:'users#new'

end
