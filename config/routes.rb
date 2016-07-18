Rails.application.routes.draw do
  resources :bands
  resources :venues do
    resources :concerts, except: [:index]
  end
  resources :concerts, only: [:index]
end
