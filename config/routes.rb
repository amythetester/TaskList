Rails.application.routes.draw do
  get "/", to: "tasks#index"
  get "/tasks", to: "tasks#index", as: "tasks"
  get "root", to: "tasks#index"
end
