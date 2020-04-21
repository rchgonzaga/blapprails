Rails.application.routes.draw do
  get 'dashboard/api/v1/dashboard'
  devise_for :users
  get 'home/index'
  root "home#index"
end
