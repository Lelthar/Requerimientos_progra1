Rails.application.routes.draw do
	
  get 'select_message/index'

  resources :chat_cliente_admins
  resources :categories
  resources :products
  devise_for :users#, controllers: {registrations: 'users/registrations'}
  #get 'inicio/index'


  root 'inicio#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
