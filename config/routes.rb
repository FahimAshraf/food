Rails.application.routes.draw do
  root 'home#index'
  get 'home/receive_order'
  get 'home/all_contacts'
  get 'destroy/:id', to: 'home#destroy', as: 'khatam'

  get 'edit/:id', to: 'home#edit', as: 'fahim'
  get 'update/:id', to: 'home#update', as: 'menu'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
