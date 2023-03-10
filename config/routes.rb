Rails.application.routes.draw do

  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
