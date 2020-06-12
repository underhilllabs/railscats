Rails.application.routes.draw do
  resources :posts
  devise_for :users do
    resources :posts, only: [:index, :show]
  end
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
