Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  devise_for :users
  root to: 'tweets#index'
  get 'tweets' => 'tweets#index'
end
