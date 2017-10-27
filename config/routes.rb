Rails.application.routes.draw do
  get 'places/index'

  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, except: %i[update edit destroy]
  resources :users, only: [:index]
  resources :friendships
  root 'places#index'
end
