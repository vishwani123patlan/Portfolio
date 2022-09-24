Rails.application.routes.draw do
  resources :software
  resources :projects
  resources :skills
  resources :posts
  resources :social_handles, only: [:index]
  resources :contact, only: [:index] 
  post '/send_message', to: 'contact#send_message'
  devise_for :users
  get 'profiles/index'
  root to: "profiles#index"
  get '/about', to: 'profiles#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
