Rails.application.routes.draw do

  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  get 'home/about' => 'homes#about'

  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  resources :books, only:[:new, :create, :index, :show, :edit, :destroy]

  # get 'users/show'
  # get 'users/index'
  # get 'users/edit'
  resources :users, only:[:create, :index, :show, :edit, :update]

end
