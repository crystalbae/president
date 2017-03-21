Rails.application.routes.draw do
  get 'main/index'

  # root 'main/index'
  post 'main/index' => 'main#create'
  delete 'comment/:id' => 'main#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
