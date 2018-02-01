Rails.application.routes.draw do
  root 'gossips#show'
  get 'gossips/new'
  resources :gossips
 
end
