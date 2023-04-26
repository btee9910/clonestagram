Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :only => [ :new, :create]

  # get 'users/new'
  # get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
