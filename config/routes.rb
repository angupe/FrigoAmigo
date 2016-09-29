Rails.application.routes.draw do
  devise_for :users

  get '/users/:id', to: 'users#show'

  get '/users', to: 'users#index'

  get '/profile', to: 'users#profile'

  post '/compare', to: 'foods#compare'

  get '/recipe/:id', to: 'foods#recipe'

  # root to: 'users#profile'

  root 'foods#index'
  get 'foods/autocomplete_food_name'
    resources :foods

end
