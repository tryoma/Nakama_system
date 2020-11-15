Rails.application.routes.draw do
  devise_for :users
  root 'home#home'
  get '/top', to: 'home#top'
  get '/index', to: 'home#index'

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :destroy, :update]
  end
end