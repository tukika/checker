Rails.application.routes.draw do
  resources :managements
  get 'home/top'
  devise_for :admins
  root to: "home#top"
  get '/office',to:'home#office'
  get '/remote',to:'home#remote'
  get '/mtg',to:'home#mtg'
  get '/holiday',to:'home#holiday'
  get '/home',to:'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
