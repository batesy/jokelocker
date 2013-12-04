Jokelocker3::Application.routes.draw do
  root to: 'welcome#index'

  resources :jokes
  resources :user_sessions
  resources :users

  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
