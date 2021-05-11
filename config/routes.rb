Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]

  resources :users do
    member do
      get :followings, :followers
    end
  end


post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す


get "search" => "search#search"

end