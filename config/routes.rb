Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/show'
  get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:show, :new, :create]
  end
end
