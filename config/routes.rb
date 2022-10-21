Rails.application.routes.draw do
  resources :contestants do
    resources :voters
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "contestants#index"
end
