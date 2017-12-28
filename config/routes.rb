Rails.application.routes.draw do
  root to: 'home#index'
  resources :translations, only: [:show, :new, :create, :edit, :update]
end
