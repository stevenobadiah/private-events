Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show] 
  resources :events, only: [:new, :create, :show, :index] 
  root 'events#index'
end
