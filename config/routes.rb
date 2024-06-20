Rails.application.routes.draw do
  devise_for :users
  root to: new_user_registration_path
  root to:  new_user_session_path
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
