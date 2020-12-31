Rails.application.routes.draw do
  devise_for :users
  get 'fashions/index'
  root to: "fashions#index"
end
