Rails.application.routes.draw do
  namespace :api do
    resources :code, only: [:index, :show, :create]
  end
  resources :code
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'code#index'
end
