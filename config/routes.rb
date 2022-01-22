Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  post 'posts/:post_id/comments', 
  to: 'comments#create', as: 'post_comment'
  resources :posts 
  end

