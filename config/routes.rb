Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #list tasks
  get "/tasks", to: "tasks#index"
  #view the details
  get "/tasks/new", to: "tasks#new"
  get "/tasks/:id", to: "tasks#show", as: "task"
  #add a new task
  post "/tasks", to: "tasks#create"
  #edit a task - mark as done
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "/tasks/:id", to: "tasks#update"
  #remove a task
  delete "/tasks/:id", to: "tasks#destroy"
end
