Rails.application.routes.draw do
  devise_for :users
  root to: "sakes#index"
  resources :sakes
end
