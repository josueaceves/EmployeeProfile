Rails.application.routes.draw do
  resources :user do    
    resources :employees
  end
  get "/get_employee" => "employees#get_employee"
  get "/new_employee" => "employees#new_employee_partial"
  root "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
