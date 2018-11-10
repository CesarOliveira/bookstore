Rails.application.routes.draw do
  root 'main#index'
  resources :books
  resources :categories
end
