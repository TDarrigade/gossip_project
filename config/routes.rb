Rails.application.routes.draw do
  get 'gossips/new'
  resources :gossips
  root 'gossips/new'
end
