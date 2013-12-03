Jokelocker3::Application.routes.draw do
  root to: 'jokes#index'

  resources :jokes
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout
end
