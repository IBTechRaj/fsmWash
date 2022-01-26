Rails.application.routes.draw do
  # get 'clients/show'
  resource :users, only: [:create]
  resource :clients, only: [:create, :show]
  resources :bookings
  post "/login", to: "users#login"
  # get "/auto_login", to: "users#auto_login"
end
