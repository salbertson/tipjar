Tiptip::Application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :codes, only: [:show]

    resources :users, shallow: true do
      resources :tips, only: [:create]
    end
  end

  root to: 'application#index'
end
