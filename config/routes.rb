Rails.application.routes.draw do
  get 'home/index'
  resources :movies, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :documentary_films, only: [:index, :new, :create]

  root 'home#index'
end




