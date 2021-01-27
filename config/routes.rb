Rails.application.routes.draw do
  devise_for :end_users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "public/homes#top"

  get "/about", to: "public/homes#about"
  # get "/end_users/mypage", to: "public/end_users#show"

  scope module: :public do
    resource :end_users, only: [:show, :edit, :update]
  end

  namespace :admin do

  end
end
