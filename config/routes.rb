Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about'
  devise_for :users
  resources :users, except: [:new, :create, :destroy]
  resources :books, except: :new

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
