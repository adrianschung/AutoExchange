Rails.application.routes.draw do
  devise_for :users, controller: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'home#index'
  get '/howto', to: 'home#howto'
  get '/user/:id', to: 'user#show'
  resources :vehicles do
    collection do
      get :automobiles
      get :boats
      get :motorcycles
    end
    resources :photos, only: :create
  end
  resource :conversations do
    resources :messages
  end
end
