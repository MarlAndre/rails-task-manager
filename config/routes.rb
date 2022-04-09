Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 1. read all tasks
  root to: 'tasks#index'
  # 2. read one task
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show'
  # 3. create a task
  post 'tasks', to: 'tasks#create'
  # 4. update a task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # 5. delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
