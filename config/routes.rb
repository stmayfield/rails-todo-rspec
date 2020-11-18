Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: controller#action
  root to: 'todos#index'

  # resources :controller, only: ':new' (method/action from controller) 
  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create]
end
