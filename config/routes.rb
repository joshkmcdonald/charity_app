Rails.application.routes.draw do
  devise_for :users
  # get 'pages/about'
  get 'about', to: 'pages#about'
  # get 'pages/contact'
  get 'contact', to: 'pages#contact'
  
  root :to => "pages#home"
end