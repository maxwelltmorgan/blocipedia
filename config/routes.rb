Rails.application.routes.draw do
  
  resources :charges, only: [:new, :create]

  resources :wikis

  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
