Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :contacts do
    collection { post :import }
  end

  root to: 'contacts#index'
end
