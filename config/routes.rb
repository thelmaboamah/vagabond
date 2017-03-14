Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

	root 'application#hello'

  # User routes
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user_show'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
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

end
