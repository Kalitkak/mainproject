Rails.application.routes.draw do
  get 'simple_pages/contact'
  get 'simple_pages/about'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
