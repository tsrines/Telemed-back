Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :users
  root to: "calls#root"
   
  resources :calls, only: :create
  mount ActionCable.server, at: '/cable'
end
