Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
# Create new users
  resources :authors
  get  '/signup',  to: 'authors#new'
  post '/signup',  to: 'authors#create'
# Sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
