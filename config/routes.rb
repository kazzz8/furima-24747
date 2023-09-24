Rails.application.routes.draw do
  resources :items, onry: :index
  root 'items#index'
end
