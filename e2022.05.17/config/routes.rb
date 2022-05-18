Rails.application.routes.draw do
  get 'admins/index'
  get 'admins', to: 'admins#index'

  get 'users/index'
  patch 'users/:id', to: 'users#update', as: 'users'

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
