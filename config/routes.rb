Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/reauth', to: 'auth#show'
      get '/books', to: 'books#index'

      resources :authors, :genres, only: [:index, :update, :show, :create] do
        resources :books, only: [:index, :create, :show, :update, :destroy]
      end

      resources :users, only: [:index, :update, :create, :show]

    end
  end
end
