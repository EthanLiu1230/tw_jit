Rails.application.routes.draw do

  resources :articles
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  delete 'log_out', to: 'sessions#destroy'

  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
