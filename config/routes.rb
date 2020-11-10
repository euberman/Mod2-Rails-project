Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students 
  resources :blogs
  resources :cohorts
  resources :videos
  resources :likes

  get “/login”, to: sessions#new”
  post “/login”, to: “sessions#create” 
end
