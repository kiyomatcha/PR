Rails.application.routes.draw do
  devise_for :users
  
  root 'pages#home'
  get :about,   to: 'pages#about'
  get :help,    to: 'pages#help'
  get :terms,   to: 'pages#terms'
  get :privacy, to: 'pages#privacy'
  get :show,    to: 'pages#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
