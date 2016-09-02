Rails.application.routes.draw do
  get '/' => "games#index"
  get '/games' => 'games#index'
end
