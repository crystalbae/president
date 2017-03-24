Rails.application.routes.draw do

  root 'main#index'
  get 'main/index'
  get '/comment/like' => 'main#like'
  get '/comment/unlike' => 'main#unlike'
  post '/comment/best' => 'main#sort_by'
  post '/comment/latest' => 'main#sort_by'
  post '/' => 'main#create'
  delete '/:id' => 'main#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
