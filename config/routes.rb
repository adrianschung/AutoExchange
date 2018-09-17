Rails.application.routes.draw do
  devise_for :users, controller: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'home#index'
  get '/howto', to: 'home#howto'
  get '/user/:id', to: 'user#show'
  resources :vehicles
end
