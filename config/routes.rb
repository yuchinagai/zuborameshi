Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :reviews, except: :index
  end
  root "recipes#index"
end
