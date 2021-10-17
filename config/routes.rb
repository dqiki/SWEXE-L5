Rails.application.routes.draw do
  resources :tweets
  resources :users
  resources :likes
  root 'top#main'
  post 'top/login'
  get 'top/main'
  get 'top/logout'
  delete 'tweets/:id', to: 'tweets#destroy'
end
