Rails.application.routes.draw do
  root 'main#index'
  resources :categories

  resources :books do
    get :like, on: :member
  end
end
