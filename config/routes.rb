Rails.application.routes.draw do
  root "posts#index"
      resources :posts, except: [:edit, :update, :destroy] do
        resources :comments, only: :create
    end

      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'

    get '/signup' => 'users#new'
    post '/users' => 'users#create'


end


