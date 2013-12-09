Jokelocker3::Application.routes.draw do
  get "oauths/oauth"
  get "oauths/callback"
  root to: 'welcome#index'

  resources :jokes do
    post 'add', on: :member
    delete 'remove', on: :member
  end
  resources :user_sessions
  resources :users


  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get "oauth/callback" => "oauths#callback"
  post "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
