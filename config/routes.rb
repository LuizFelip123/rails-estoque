Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root  "products#index"
  resources :buys 

  resources :products do 
    member do 
      get 'select_buy', to: 'buys#select_buy'
    end  
  end  

  resources :clients

end
