Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "pages/home"
  root to: "pages#home"

  resource :dashboard, only: :show

  resources :donations, only: %i[index show new create edit update destroy] do
    member do
      patch :claim
    end
  end
end
