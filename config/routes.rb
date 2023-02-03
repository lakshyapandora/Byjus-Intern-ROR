Rails.application.routes.draw do
  root "articles#index"
  devise_for :users

  #get "/articles", to: "articles#index"
  #get "/introduction", to: "intros#lakshya"
  #get "/articles/:id", to: "articles#show"
  #get 'articles/index'

  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
