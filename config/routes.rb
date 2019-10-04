Rails.application.routes.draw do


  resources :users, only: %i(index edit update)
  resources :groups, only: %i(new create edit update) do
    resources :messages, only: %i(index create)
  end

end