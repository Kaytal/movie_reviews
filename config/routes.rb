Rails.application.routes.draw do
  
  devise_for :users
  
  resources :movies do
    resources :reviews, except: [:show, :index]
    collection do 
      get 'search'
    end
  end
  
  root "movies#index"
end
