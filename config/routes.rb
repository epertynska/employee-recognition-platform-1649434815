# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  get 'pages/dashboard'
  resources :kudos
  devise_for :employees
  get 'home/index'
  root 'kudos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end