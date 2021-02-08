Rails.application.routes.draw do
  devise_for :users
  root to: "sakes#index"
  get 'sakes/search'
  resources :users,only: :show
  resources :sakes do
    resources :comments,only:[:create,:destroy]
    resource  :favorites,only:[:create,:destroy]
  end
end
