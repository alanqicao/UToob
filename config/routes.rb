Rails.application.routes.draw do
  root "movies#index"
  devise_for :users

  resources :users
  resources :movies do
    resources :comments
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
