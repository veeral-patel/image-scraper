Rails.application.routes.draw do
  resources :scrapes, except: [:edit]
  
  root :to => 'scrapes#index'
end
