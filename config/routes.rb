Rails.application.routes.draw do
  devise_for :admin
  devise_for :end_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "public/homes#top"

  get "/about", to: "public/homes#about"
  get "/admin", to: "admin/homes#top"
  # get "/end_users/mypage", to: "public/end_users#show"

  scope module: :public do
    resource :end_users, only: [:show, :edit, :update]
  end

  # namespace :admin do
  #   devise_for :admin
  # end
end
