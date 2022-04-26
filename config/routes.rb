# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :employees
  devise_for :admins
  resources :admins
  get 'pages/dashboard'
  resources :kudos
  get 'home/index'
  root 'kudos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end