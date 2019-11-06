Rails.application.routes.draw do
  get 'users/show'
  root to: 'events#index'
  devise_for :users
 # root to: 'users#index' #brings to https://polar-escarpment-85363.herokuapp.com/ 

 resources :users
 resources :events
end
