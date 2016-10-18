Rails.application.routes.draw do

  devise_for :users
  # devise_for :installs
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

  get '/books', to: 'pages#books'
end
