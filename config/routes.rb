Rails.application.routes.draw do
  resources :homes
  resources :projects do
    collection do
      get :per_day
      get :per_month
      get :per_week
      get :assginproject
      get :All_Projects
    end
  end
  resources :assginedprojects do
    collection do
      get :adduser
      post :save_assginment
      get :show
    end
  end

  resources :showprojects

  root to: "homes#index"
  devise_for :users, controllers: { registrations: "registrations" }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
