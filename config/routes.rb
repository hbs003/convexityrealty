Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "flats", to: "flats#index"
  get "flats/:id", to: "flats#show"
  get "flats/new", to: "flats#new"
  post "flats", to: "flats#create"
  get "flats/:id/edit", to: "flats#edit"
  patch "flats/:id", to: "flats#update"
  delete "flats/:id", to: "flats#destroy"
end
