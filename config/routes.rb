Rails.application.routes.draw do
  root "documents#index"
  resources :documents, only: [:edit]
end
