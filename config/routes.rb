Fit::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get]

  namespace :admins do
  	resources :users
  end
  resources :users 
  root 'welcome#index'
end
