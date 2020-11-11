Rails.application.routes.draw do
  root 'home#home'
  get '/top', to: 'home#top'
  get '/index', to: 'home#index'

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :destroy, :update]
  end
end