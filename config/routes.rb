Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  get 'users/show'
  devise_for :users
  root to: "sakes#index"
  resources :users,only: :show
  resources :sakes do
    resources :comments,only:[:create,:destroy]
  end
end
