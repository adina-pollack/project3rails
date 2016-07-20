Rails.application.routes.draw do
  root 'concerts#get_events'
resources :concerts
resources :comments

end
