Rails.application.routes.draw do
  #pages controller, home action
  root 'pages#home'

  # pages controller, about action
  get 'ssm', to: 'pages#ssm'

  resources :courses
  resources :schools
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
