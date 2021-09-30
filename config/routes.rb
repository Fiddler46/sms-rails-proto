Rails.application.routes.draw do
  resources :developers
  resources :messages
  resources :teams

  post 'trigger_notification' => 'trigger#notification'
end
