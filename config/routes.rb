Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index' 
  
  devise_for :teachers, path: 'teachers',

  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    confirmations:      "teachers/confirmations",
    registrations:      "teachers/registrations"
  }

  devise_for :students, path: 'students',

  controllers:
  { sessions:           "students/sessions",
    passwords:          "students/passwords",
    confirmations:      "students/confirmations",
    registrations:      "students/registrations"
  }  

  resources :teacher_courses
  resources :student_courses

end
