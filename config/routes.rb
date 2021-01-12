Rails.application.routes.draw do
  # collection
  # members
  resources :restaurants do
    collection do
      # get 'top', to: 'restaurants#top', as: :top_restaurants
      get :top
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
