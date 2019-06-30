Rails.application.routes.draw do
  resources :images, only: [:index, :show, :destroy]
  resources :scrapes, except: [:edit, :new]
  
  root :to => 'scrapes#index'
end
