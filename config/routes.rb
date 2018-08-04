Rails.application.routes.draw do

  devise_for :users

  resources :new_total_costs
  resources :new_travel_costs
  resources :new_addresses
  resources :current_total_costs
  resources :current_travel_costs
  resources :work_locations
  resources :current_addresses
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
