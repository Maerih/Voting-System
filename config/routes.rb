Rails.application.routes.draw do
  get 'home/index'
  resources :contestants do 
    resources :votes
  end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  authenticated :user do
    root "contestants#index", as: :authenticated_root

  end

  root to: "home#index"

end
