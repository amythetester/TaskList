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
end
