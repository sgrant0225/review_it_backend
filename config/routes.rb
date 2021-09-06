Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
     resources :reviews, only: [:index, :create, :show, :destroy]
      resources :categories


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      end
   end
end
