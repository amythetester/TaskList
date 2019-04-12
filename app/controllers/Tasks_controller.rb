class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    task_id = params[:id]
    @task = Task.find_by(id: task_id)

    if @task.nil?
      redirect_to action: "index"
    end
  end

  def new
    @task = Task.new(complete: false, complete_date: "")
  end

  def create
    task = Task.new(
      name: params["task"]["name"],
      description: params["task"]["description"],
      complete: params["task"]["complete"],
      complete_date: params["task"]["complete_date"],
    )

    is_successful = task.save

    if is_successful
      redirect_to task_path(task.id)
    else
      head :not_found
    end
  end
end
