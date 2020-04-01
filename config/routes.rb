Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts, except: [:destroy] do
    resources :non_medical_reqs do
      get :fullfill, on: :member
    end
    resources :medical_reqs do
      get :fullfill, on: :member
    end
  end
end
