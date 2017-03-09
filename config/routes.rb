Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root to: 'pages#home'
  get 'services', to: 'pages#services'
  get 'riddle', to: 'pages#riddle'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
