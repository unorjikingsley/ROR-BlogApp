Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  resources :users do
    resources :posts do
      member do
        post 'like'  # Change this line to a post request
        delete 'unlike' # Change this line to a delete request
      end
      resources :comments
    end
  end
end
