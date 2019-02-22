Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/new'
  root 'charts#index'

  resources :artists
  resources :charts do
    resources :songs, only: [:index, :new, :create, :destroy]
  end
end
