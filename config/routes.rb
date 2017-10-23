Rails.application.routes.draw do
  #----clearance routes start here
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "signin"
  delete "/sign_out" => "clearance/sessions#destroy", as: "signout"
  get "/sign_up" => "clearance/users#new", as: "signup"
#-- clearance routes ends here

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users, except: [:index, :create]
end
