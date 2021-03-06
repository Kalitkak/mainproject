Rails.application.routes.draw do
  resources :products
  get 'simple_pages/contact'
  get 'simple_pages/about'
  root 'products#index'
  get 'simple_pages/landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
