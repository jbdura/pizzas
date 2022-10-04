Rails.application.routes.draw do
  resources :restaurant_pizzas, only[:show, :index]
  resources :restaurants do
    resources :restaurants_pizzas, only[:show]
  end
  resources :pizzas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
