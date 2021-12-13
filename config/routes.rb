# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  namespace :auth do
  end
  # define the root path
  root to: 'main#index'

  namespace :auth do
    # get 'register/index'
    get '/register', to: 'register#new', as: 'register'    
    post '/register', to: 'register#create'

    get '/login', to: 'session#new', as: 'login'
    post '/login', to: 'session#create' 
    
    delete '/logout', to: 'session#destroy', as: 'logout'
    
    get 'passwords', to: 'passwords#edit', as: 'edit_password'
    patch 'passwords/update', to: 'passwords#update', as: 'update_password' 

    get 'password_resets', to: 'password_resets#new', as: 'password_reset'
    post 'password_resets/create', to: 'password_resets#create', as: 'create_password_reset'

    get 'password_resets/edit', to: 'password_resets#edit', as: 'edit_password_reset'
    patch 'password_resets/edit', to: 'password_resets#update', as: 'update_password_reset'
  end

  # get 'main/index'
  get '/about', to: 'about#index', as: 'about'
  # get 'about/show'
end
