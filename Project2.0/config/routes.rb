Rails.application.routes.draw do
  devise_for :users
  root 'courses#index'
  resources :enrollments
  resources :students
  resources :sections
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
