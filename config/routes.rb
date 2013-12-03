Jokelocker3::Application.routes.draw do
  get "welcome/index"
  resources :jokes
  root to: 'jokes#index'
end
