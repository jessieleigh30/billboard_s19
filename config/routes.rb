Rails.application.routes.draw do
  root 'charts#index'

  resources :artists
  resources :charts
end
