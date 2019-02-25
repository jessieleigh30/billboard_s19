Rails.application.routes.draw do
  devise_for :users
  root 'charts#index'

  resources :artists do
    resources :songs
  end

  resources :charts do
    resources :songs
  end
end
