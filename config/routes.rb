Rails.application.routes.draw do
  get "leaderboard/index"
  resources :matches
  resources :players
  root "leaderboard#index"
end
