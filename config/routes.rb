Rails.application.routes.draw do
  root 'concerts#get_concerts'
  resources :bands
  resources :concerts
  resources :venues
end
