Rails.application.routes.draw do
  devise_for :users
  root 'home#home'
  get '/top', to: 'home#top'
  
  resources :users, only: [:index]
  namespace :api, format: 'json' do
    resources :users, only: [:index, :create, :destroy, :update]
  end

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :destroy, :update]
  end
end