Rails.application.routes.draw do
  namespace :api do
    get "/restaurants" => "restaurants#index"
  end
end
