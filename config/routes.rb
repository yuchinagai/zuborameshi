Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "recipes#index"
  devise_for :users
  resources :recipes do
    resources :reviews, except: :index
  end
  resources :categories
  post   '/like/:recipe_id' => 'likes#like',   as: 'like'
  delete '/like/:recipe_id' => 'likes#unlike', as: 'unlike'
end
