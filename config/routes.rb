Rails.application.routes.draw do

  resources :posts, only: [:new, :create]

  root "board#index"

  get "/posts/search" => "posts#search", as: :search_post
  
end
