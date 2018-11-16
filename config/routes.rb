Rails.application.routes.draw do
  resources :supplementaries
  #pages controller, home action
  root 'pages#home'

  # pages controller, about action
  get 'ssm', to: 'pages#ssm'

  resources :courses
  resources :schools
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'filter_courses_by_school' => 'students#filter_courses_by_school'
  get 'filter_courses_by_school_ssm' => 'supplementaries#filter_courses_by_school_ssm'

end
