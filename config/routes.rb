Rails.application.routes.draw do
  
  get '/' => "games#index"
  get '/games' => 'games#index'
  get '/suppliers' => 'suppliers#index'
  get '/images' => 'images#index'
  get '/games/random' => 'games#random'

  get '/games/new' => 'games#new'
  get '/suppliers/new' => 'suppliers#new'
  get '/images/new' => 'images#new'
  get '/signup' => 'users#new'

  post '/games' => 'games#create'
  post '/suppliers' => 'suppliers#create'
  post '/images' => 'images#create'
  post '/users' => 'users#create'

  get '/games/:id' => 'games#show'
  get '/suppliers/:id' => 'suppliers#show'
  get 'images/:id' => 'images#show'

  get '/games/:id/edit' => 'games#edit'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  get '/images/:id/edit' => 'images#edit'
  
  patch '/games/:id/' => 'games#update'
  patch '/suppliers/:id' => 'suppliers#update'
  patch '/images/:id' => 'images#update'

  delete '/games/:id' => 'games#destroy'
  delete '/suppliers/:id' => 'suppliers#destroy'
  delete '/images/:id' => 'images#destroy'

  get '/sessions' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'

end
