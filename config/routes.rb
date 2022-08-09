Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

  #attaches comments to posts (i.e. /posts/1/comments/4)
  resources :posts do
    resources :comments
  end
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
root "pages#home"
end
