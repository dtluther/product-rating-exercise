Rails.application.routes.draw do
  #get 'product/index,'
  #get 'product/show'
  resources :product, only: [:show, :index] do
    resources :reviews, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
