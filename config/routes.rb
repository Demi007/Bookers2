Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  root to: 'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:create, :index, :show, :destroy]
end
