Rails.application.routes.draw do
  
  get '/' => "games#index"
  get '/games' => 'games#index'
  get '/suppliers' => 'suppliers#index'
  get '/images' => 'images#index'
  get '/games/random' => 'games#random'

  get '/games/new' => 'games#new'
  get '/signup' => 'users#new'

  post '/games' => 'games#create'
  post '/images' => 'images#create'
  post '/users' => 'users#create'

  get '/games/:id' => 'games#show'
  get '/suppliers/:id' => 'suppliers#show'


  get '/games/:id/edit' => 'games#edit'
  get '/suppliers/:id/edit' => 'suppliers#edit'


  patch '/games/:id/' => 'games#update'
  patch '/suppliers/:id' => 'suppliers#update'


  delete '/games/:id' => 'games#destroy'
  delete '/suppliers/:id' => 'suppliers#destroy'


  get '/sessions' => 'sessions#new'
  post '/login' => 'sessions#create' 
  delete '/logout' => 'sessions#destroy'

  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'order#show'
end
