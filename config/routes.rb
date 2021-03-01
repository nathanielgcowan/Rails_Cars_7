Rails.application.routes.draw do
  root 'cars#index'
  get 'cars/ratings', to: 'cars#highest_rating'
  
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  resources :cars
  resources :cars, only: [:show] do
    resources :parts, only: [:show, :index, :new,:create]
  end
  resources :parts
    resources :vehicles, only: [:index, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
