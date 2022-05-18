Rails.application.routes.draw do
  get 'buildings/index'
  get 'buildings/create'
  get 'buildings/show'
  get 'buildings/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :buildings do
      resources :apartments
    end
  # Defines the root path route ("/")
  # root "articles#index"
    root "buildings#index"
end
