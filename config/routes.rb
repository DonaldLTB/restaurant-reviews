Rails.application.routes.draw do
  # collection
  # members
  resources :restaurants do
    collection do
      # get 'top', to: 'restaurants#top', as: :top_restaurants
      get :top
    end

    member do
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy] # why outside, because you just wanna destroy reviews so
  # shouldnt have sth to do with restaurants (id)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
