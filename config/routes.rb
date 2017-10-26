Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, except: [:update, :edit, :destroy]
  root 'welcome#index'
end
