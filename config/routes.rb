Rails.application.routes.draw do
  get '/' => "games#index"
  get '/games' => 'games#index'
  get '/suppliers' => 'suppliers#index'
  get '/games/random' => 'games#random'

  get '/games/new' => 'games#new'
  get '/suppliers/new' => 'suppliers#new'
  post '/games' => 'games#create'
  post '/suppliers' => 'suppliers#create'

  
  get '/games/:id' => 'games#show'
  get '/suppliers/:id' => 'suppliers#show'

  get '/games/:id/edit' => 'games#edit'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/games/:id/' => 'games#update'
  patch '/suppliers/:id' => 'suppliers#update'

  delete '/games/:id' => 'games#destroy'
  delete '/suppliers/:id' => 'suppliers#destroy'
end
