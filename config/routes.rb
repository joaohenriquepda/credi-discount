Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users, only: [:show]
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
