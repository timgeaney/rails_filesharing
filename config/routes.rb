RailsFileshare::Application.routes.draw do

  authenticated :user do
    root :to => 'assets#index'
  end
  
  root :to => "home#index"
  devise_for :users

  resources :users, :assets
end