Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'course/index'
  get 'course/course_syllabus'
  get 'course/check'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  resources :user do
    resources :course_steps
    resources :course
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
