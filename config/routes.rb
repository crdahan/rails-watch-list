Rails.application.routes.draw do
  #get 'lists/index'
  #get 'lists/show'
  #get 'lists/new'
  #get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :movies
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
