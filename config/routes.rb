Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :error_logs
  resources :imported_files

  resources :contacts do
    collection { post :import }
  end

  root to: 'contacts#index'
end
