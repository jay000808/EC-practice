Rails.application.routes.draw do
  devise_for :end_users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "public/homes#top"
  
  namespace :public do
    resources :end_users
  end
  
end
