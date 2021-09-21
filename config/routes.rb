Rails.application.routes.draw do
  root 'home#index'
  get 'home/receive_order'
  get 'home/all_contacts'
  get 'home/destroy'

  get '/edit/:id', to: 'home#edit'
  patch 'edit/:id', to: 'home#update', as: 'fahim'
  get 'update/:id', to: 'home#update', as: 'menu'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
