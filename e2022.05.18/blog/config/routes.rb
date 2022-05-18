Rails.application.routes.draw do
  resources :tags
  resources :posts
  resources :post_tags
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
