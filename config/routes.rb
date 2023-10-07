Rails.application.routes.draw do
  devise_for :users
  resources :items, onry: :index
  root 'items#index'
end
