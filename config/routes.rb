Rails.application.routes.draw do
  get 'users/new'

  get '/home' , to: 'static_pages#home'

  get '/help' , to: 'static_pages#help'

  get '/about' , to: 'static_pages#about'

  get '/contact' , to: 'static_pages#contact'

  get '/signup' , to: 'users#new'

  post '/signup' , to: 'users#create'

  get '/edit' , to: 'users#edit'

  patch '/edit' , to: 'users#update' #CHECK!

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end