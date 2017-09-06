Rails.application.routes.draw do

  root :to => 'users#index'

  resources :user_sessions
  resources :users
  resources :sites
  scope 'site/:site' do
    resources :products do
      resources :product_tags, :as => :tags
    end
    resources :tags
  end
  
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
