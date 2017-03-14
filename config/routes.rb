Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  
  
  root to: 'pages#home'
  get 'market', to: 'pages#market'
  get 'quark', to: 'products#quark_order'
  get 'lepton', to: 'products#lepton_order'
  get 'proton', to: 'products#proton_order'
  
  
  get 'riddle', to: 'pages#riddle'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
