Jokelocker3::Application.routes.draw do
  resources :jokes
  root to: 'jokes#index'
end
