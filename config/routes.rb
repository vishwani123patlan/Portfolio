Rails.application.routes.draw do
  resources :projects
  resources :skills
  resources :posts
  devise_for :users
  get 'profiles/index'
  root to: "profiles#index"
  get '/about', to: 'profiles#about'
  get '/contact', to: 'profiles#contact'
  post '/send_message', to: 'profiles#send_message'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
