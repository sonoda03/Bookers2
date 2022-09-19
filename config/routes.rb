Rails.application.routes.draw do
  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  resources :books, only:[:new, :create, :index, :show, :edit]
  
end
