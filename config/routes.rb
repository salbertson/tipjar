Tiptip::Application.routes.draw do
  namespace :api do
    resources :tip_codes, only: [:show], defaults: { format: :json }
  end

  root to: 'application#index'
end
