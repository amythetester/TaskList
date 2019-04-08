class TasksController < ApplicationController
  TASKS = [
    { name: "Call bank", status: "Not Done" },
    { name: "Get groceries", status: "Not Done" },
    { name: "Clean dishes", status: "Not Done" },
  ]

  def index
    @tasks = TASKS
  end
end
