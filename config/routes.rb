Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    collection do
      get :movies
    end
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
