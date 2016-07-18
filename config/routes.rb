Rails.application.routes.draw do
  root 'concerts#get_events'
resources :concerts do
      resources :bands, except: [:index]
    end
  resources :bands, only: [:index]
end
