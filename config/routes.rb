Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  resources :wikis
  resources :wikis do
    resources :collaborators, only: [:create, :destroy]
  end

  devise_for :users

  resources :users

  match "users/:id/downgrade" => "users#downgrade", :as => "downgrade_user", via: [:get, :post]

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
