Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/users'

  get 'upgrade/:id', as: 'upgrade', to: 'pages#upgrade'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
