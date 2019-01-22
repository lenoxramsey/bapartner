Rails.application.routes.draw do
    resources :prospects
    devise_for :users
    
    root to: "pages#home" 
end
