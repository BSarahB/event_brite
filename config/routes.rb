Rails.application.routes.draw do
  root to: 'users#index' #brings to https://polar-escarpment-85363.herokuapp.com/ 

  resources :users
end
