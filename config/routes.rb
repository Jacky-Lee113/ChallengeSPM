Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  root "home#index"
  get '/search-by-name', to: "home#search_by_name"
  get 'search-by-ingredient', to: "home#search_by_ingredient"
  get '/random', to: "home#random"
end
