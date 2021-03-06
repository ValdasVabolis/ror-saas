Rails.application.routes.draw do
  # home page points to pages controller, home action
  root to: 'pages#home'
  # routes for devise (extend devise functionality)
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # nested resource (each user profile has route for various actions)
  resources :users do
    resource :profile
  end
  # on get request, go to pages controller and run about action
  get 'about', to: 'pages#about'
  # allow only create action from contacts routes
  resources :contacts, only: :create
  # on get request, go to contacts_controller and run new action
  get 'contact-us', to: 'contacts#new'
end
