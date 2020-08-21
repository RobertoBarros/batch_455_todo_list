require_relative 'tasks_view'

class TasksController

  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def create
    # 1. Perguntar qual a description
    description = @view.ask_user_for_description
    # 2. Instaciar uma nova task
    new_task = Task.new(description)
    # 3. Adicionar a nova task ao repository
    @repository.add(new_task)
  end

  def list
    # 1. Pegar todas as task do repository
    tasks = @repository.all
    # 2. Enviar as task para a view exibir
    @view.display(tasks)
  end

  def mark_as_done
    # 1. Mostrar todas as task para o usuário
    list
    # 2. Perguntar qual task ele quer marcar
    index = @view.ask_user_task_index
    # 3. Encontrar a task informada no repository
    task = @repository.find(index)
    # 4. Marcar a task como done!
    task.mark_as_done!
  end

  def destroy
    # 1. Mostrar todas as task para o usuário
    list
    # 2. Perguntar qual task ele quer remover
    index = @view.ask_user_task_index
    # 3. Remover a task do repository pelo index
    @repository.remove(index)
  end



end



