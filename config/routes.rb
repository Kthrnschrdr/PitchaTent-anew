PitchaTent::Application.routes.draw do
  
  root to: 'parks#index'

  get "email" => 'people#email', :as => "email"
  get "signup" => 'people#new', :as => "signup"
  post "create_person" => 'people#create', :as => "create_person"
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  get "logout" => 'logins#destroy', :as => "logout"
  
  get "parks_nearby" => 'parks#parks_nearby'
  get "favorite_parks" => 'parks#favorite_parks'
  
  resources :parks, :stories, :people 
  
end
