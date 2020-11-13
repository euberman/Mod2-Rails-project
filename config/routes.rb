Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students 
  resources :blogs
  resources :cohorts
  resources :videos
  resources :likes

  get "/", to: "sessions#is_student_logged_in?"

  get "/profile", to: "profile#student_profile"
  
  get "/logout", to: "sessions#destroy"
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  post "/blogs/:id/like", to: "blogs#like", as: 'like_blog'

end
