Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :users#, controllers: {registrations: 'users/registrations'}
  #get 'inicio/index'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
