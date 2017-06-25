Rails.application.routes.draw do
  # home page points to pages controller, home method
  root to: 'pages#home'
  get 'about', to: 'pages#about'
end
