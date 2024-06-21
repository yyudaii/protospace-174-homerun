Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :prototypes, only: [:index, :new, :crete, :show]
end
