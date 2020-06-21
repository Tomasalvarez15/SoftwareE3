# frozen_string_literal: true

Rails.application.routes.draw do
  resources :equals
  resources :estados
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'welcome#index'
  resources :comentarios
  resources :gustos
  resources :locals
  resources :comunas
  resources :usuarios
  resources :users
  get 'welcome/index'
  root 'welcome#index'
  get 'users/index2', to: 'users#index2'
  get 'welcome/index', to: 'welcome#index'
  get 'usuarios/new', to: 'usuarios#new'
  get 'usuarios/edit', to: 'usuarios#edit'
  get 'usuarios/show', to: 'usuarios#show'
  get 'usuarios/destroy', to: 'usuarios#destroy'
  get 'locals/new', to: 'locals#new'
  get 'locals/edit', to: 'locals#edit'
  get 'locals/show', to: 'locals#show'
  get 'locals/destroy', to: 'locals#destroy'
  get 'comunas/new', to: 'comunas#new'
  get 'comunas/edit', to: 'comunas#edit'
  get 'comunas/show', to: 'comunas#show'
  get 'comunas/destroy', to: 'comunas#destroy'
  get 'gustos/new', to: 'gustos#new'
  get 'gustos/edit', to: 'gustos#edit'
  get 'gustos/show', to: 'gustos#show'
  get 'gustos/destroy', to: 'gustos#destroy'
  get 'comentarios/new', to: 'comentarios#new'
  get 'comentarios/edit', to: 'comentarios#edit'
  get 'comentarios/show', to: 'comentarios#show'
  get 'comentarios/destroy', to: 'comentarios#destroy'
  post 'users/index', to: 'equals#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
