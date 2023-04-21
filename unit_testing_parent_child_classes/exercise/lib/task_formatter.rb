class TaskFormatter
  def initialize(task) 
    @task = task
  end

  def format
    if @task.complete? == true
      return "-[x] #{@task.title}"
    elsif @task.complete? != true
      return "-[] #{@task.title}"
    end
  end
end