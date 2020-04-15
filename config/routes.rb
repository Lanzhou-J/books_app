Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/books", to: "books#index"
  # get "/show", to: "books#show"

  get "/books", to: "books#index"
  get "/books/show", to: "books#show"
  get "/books/add", to: "books#add"
  post "/add", to: "books#create", as: "create" 
end
