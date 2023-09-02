Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  # get '/sign_out', to: 'custom_sessions#destroy', as: :custom_sign_out

  resources :users do
    resources :posts do
      member do
        post 'like'  # Change this line to a post request
        delete 'unlike' # Change this line to a delete request
      end
      resources :comments
    end
  end

    namespace :api do
    namespace :v1 do
      resources :users, only: [:index] do
        resources :posts, only: [:index] do
          resources :comments, only: [:index, :create]
        end
      end
    end
  end
end
