Rails.application.routes.draw do
  get 'sessions/new'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :showcases

  
  namespace :mypage do
    resources :showcases 
    resources :treasures
  end
  
  resources :favorites
end
