Rails.application.routes.draw do
  root 'concert#get_concerts'
  resources :bands
  resources :concerts
  resources :venues
end
