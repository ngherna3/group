Rails.application.routes.draw do
  resources :class_assignments
  resources :courses
  resources :offices
  resources :professors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
