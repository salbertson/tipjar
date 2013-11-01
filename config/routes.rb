Tiptip::Application.routes.draw do
  namespace :api do
    resources :tip_codes, only: [:show]
  end
end
