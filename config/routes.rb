Rails.application.routes.draw do

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
