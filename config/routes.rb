Tiptip::Application.routes.draw do
  namespace :api do
    resources :tip_codes, only: [:show], defaults: { format: :json }

    resources :users, shallow: true do
      resources :tips, only: [:create], defaults: { format: :json }
    end
  end

  resources :tips, only: [:show]

  root to: 'application#index'
end
