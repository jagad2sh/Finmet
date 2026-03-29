Rails.application.routes.draw do
  resources :matches
  resources :players
  root "players#index"
end
