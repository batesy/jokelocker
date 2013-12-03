Jokelocker3::Application.routes.draw do
  get "welcome/index"
  resources :jokes
  resources :users
  root to: 'jokes#index'
end
