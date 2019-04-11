class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end
end
