Rails.application.routes.draw do
  root "brands#index"

  resources :brands do
  end

  resources :products do
  end


end
