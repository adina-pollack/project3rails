Rails.application.routes.draw do
  root 'concerts#get_events' # NHO: Not sure why we need to root to a view page?
resources :concerts
resources :comments

end
