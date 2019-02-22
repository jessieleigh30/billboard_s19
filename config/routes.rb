Rails.application.routes.draw do
  root 'chart#index'

  resources :artists
  resources :charts
end
