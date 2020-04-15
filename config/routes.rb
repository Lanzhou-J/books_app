Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/books", to: "books#index"
  # get "/show", to: "books#show"
  root to: "books#index"
  get "/books", to: "books#index"
  get "/books/show", to: "books#show"
  get "/books/add", to: "books#add"
  get "/books/update", to: "books#put"
  post "/books/new", to: "books#create", as: "create"
  get "books/show/:id", to: "books#show", as: "show"
  get "books/delete/:id", to: "books#destroy", as: "destroy"

end
