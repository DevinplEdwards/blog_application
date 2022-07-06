Rails.application.routes.draw do
   get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
root "pages#home"
end
