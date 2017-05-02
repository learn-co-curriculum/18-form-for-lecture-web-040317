Rails.application.routes.draw do
  # get '/students', to: 'students#index', as: 'students'
  # get '/students/new', to: 'students#new', as: 'new_student'
  # post '/students', to: 'students#create'
  # get '/developers', to: 'students#index', as: 'students'
  resources :students, except: [ :destroy ]

  resources :wolves
  # resources :dogs, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
