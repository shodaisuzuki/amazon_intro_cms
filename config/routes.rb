Rails.application.routes.draw do

  root :to => 'sites#index'

  get ':id', to: 'sites#show', as: :site
  patch ':id', to: 'sites#update'
  #HACK: siteじゃなくて固有のサイト名にしたい
  # get 'site/:id', to: 'products#show', as: :product 
  # patch 'site/:id', to: 'products#update', as: :product 
  
  resources :user_sessions
  resources :users
  resources :sites
  scope '/sites/:site_id' do
    resources :tags
  end

  scope ':site_id' do
    resources :products do
      resources :product_tags, :as => :tags
    end
  end
  
  
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
