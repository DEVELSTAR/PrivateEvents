Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  resources :events
  root 'events#index'
  resources :enrollments, only: [:create, :destroy]


end
