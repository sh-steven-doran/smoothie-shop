Rails.application.routes.draw do
  root to: 'welcome#index', as: 'welcome'
  resources :ingredients, only: [:new, :create, :show]
  resources :smoothies, only: [:index, :new, :create]
end
