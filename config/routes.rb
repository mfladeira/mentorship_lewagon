Rails.application.routes.draw do
  root to: 'pages#home'

  # devise_for :users
  #line above was replaced by the three lines below
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :services, only: [:index, :new, :create, :show] do
    resources :orders, only: [:index, :new, :create]
  end

  get '/get-mentors/:specialty', to: 'services#show_mentors_by_specialty'

  get '/get-orders-of-user', to: 'orders#get_orders'

  get '/get-service-of-user', to: 'services#show_service_of_user'
end
