Rails.application.routes.draw do
  resources :testcampings
  resources :pistols
  resources :testhashes
  resources :firearms
  resources :catalogues
  get 'home/index'
  get 'home/about'
  get 'home/loadout'
	root "articles#index"
  resources :articles
end
  #get "/home", to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
