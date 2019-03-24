Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :reviews, except: :index
  end
  resources :categories
  root "recipes#index"
end
