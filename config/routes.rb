Rails.application.routes.draw do
  root 'concerts#get_events'
  resources :bands
  resources :venues do
    resources :concerts, except: [:index]
  end
  resources :concerts, only: [:index]
end
