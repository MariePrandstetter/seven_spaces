Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#search'
  get '/search', to: 'pages#search'
  get '/home', to: 'pages#home', as: "home"


  resources :subscriptions, only: [ :show, :update ]
  resources :chat_rooms, only: :index
  namespace :my do
    resources :chat_rooms
    resources :subscriptions, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
