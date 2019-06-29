Rails.application.routes.draw do
  resources :images
  resources :scrapes, except: [:edit]
  
  root :to => 'scrapes#index'
end
