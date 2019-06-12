Rails.application.routes.draw do
  root to: 'tweets#index'
  get 'tweets' => 'tweets#index'
end
