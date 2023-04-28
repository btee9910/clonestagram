Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :only => [:show, :new, :create, :edit, :update]
  resources :photos
  resources :likes
  resources :comments

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
