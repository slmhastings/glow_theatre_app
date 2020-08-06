Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    # Users
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "users/:id" => "users#show"
    patch "users/:id" => "users#update"
    delete "users/id" => "users#destroy"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"

   

  end
end
