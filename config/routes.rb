# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  # define the root path
  root to: 'main#index'

  # get 'main/index'
  get '/about', to: 'about#index', as: 'about'
  # get 'about/show'
end
