Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/:post_id/likes' => 'likes#create'
  get 'posts/:post_id/likes/:id' => 'likes#destroy'
  resources :posts

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  root 'posts#index'

  get 'posts/nomumae' => 'posts#nomumae'
  get 'posts/nondeirutoki' => 'posts#nondeirutoki'
  get 'posts/nondaato' => 'posts#nondaato'

  resources :perfumes


end