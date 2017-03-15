Rails.application.routes.draw do
  
  root  to: 'entries#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # User routes
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/signup', to: 'users#new'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  # City routes
  get '/cities', to: 'cities#index'
  post '/cities', to: 'cities#create'
  get '/cities/new', to: 'cities#new', as: 'new_city'
  get '/cities/:id/edit', to: 'cities#edit', as: 'edit_city'
  get '/cities/:id', to: 'cities#show', as: 'city_show'
  patch '/cities/:id', to: 'cities#update'
  put '/cities/:id', to: 'cities#update'
  delete '/cities/:id', to: 'cities#destroy'

  #Entry routes
  # get '/entries', to: 'entries#index'
  post '/entries', to: 'entries#create'
  get '/entries/new', to: 'entries#new', as: 'new_entry'
  get '/entries/:id/edit', to: 'entries#edit', as: 'edit_entry'
  get '/entries/:id', to: 'entries#show', as: 'entry_show'
  patch '/entries/:id', to: 'entries#update'
  put '/entries/:id', to: 'entries#update'
  delete '/entries/:id', to: 'entries#destroy'


end
