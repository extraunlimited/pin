Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :products do
    resources :order_items

  end

  get "info", to: "pages#info"

  root "pages#home"



end
