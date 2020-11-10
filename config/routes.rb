Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students 
  resources :blogs
  resources :cohorts
  resources :videos
  resources :likes

  get "/", to: "students#index"

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"

end
