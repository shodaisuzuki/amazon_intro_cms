Rails.application.routes.draw do
  resources :products
  resources :sites
  root :to => 'users#index'

  resources :user_sessions
  resources :users
  resources :sites do
    resources :products
  end
  
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
