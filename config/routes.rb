Tiptip::Application.routes.draw do
  namespace :api do
    resources :tip_codes, only: [:show], defaults: { format: :json }
  end

  resources :users, shallow: true do
    resources :tips, only: [:create]
  end

  root to: 'application#index'
end
