Rails.application.routes.draw do
  get "/", to: "tasks#index"
  get "/tasks", to: "tasks#index", as: "tasks"
  get "root", to: "tasks#index"

  get "/tasks/:id", to: "tasks#show", as: "task"

  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create"  #, as: "create_task"
end
