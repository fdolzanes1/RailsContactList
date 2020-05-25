Rails.application.routes.draw do
  resources :contacts
  root to: 'static_pages#index'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'

  resources :contacts
  resources :users, only: [:new, :create]
end
