Rails.application.routes.draw do
  resources :developers
  resources :messages
  resources :teams
end
