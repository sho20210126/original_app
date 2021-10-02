Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'
  }
  root to: 'items#show'
  resources :items, only: [:index, :show, :new, :create] do
    resources :evaluations, only: :create
  end
end
