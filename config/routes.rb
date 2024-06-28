Rails.application.routes.draw do

  resources :albums
  resources :artists
  resources :genders
  resources :tracks
  resources :songs, only: [:index, :show]
  resources :home, only: [:index, :show]

  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"

  # match '*unmatched', to: 'application#route_not_found', via: :all

end
