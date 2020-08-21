class TasksView

  def ask_user_for_description
    puts "What's the task description?"
    gets.chomp
  end

  def ask_user_task_index
    puts "Enter task index:"
    gets.chomp.to_i - 1
  end

  def display(tasks)
    puts '-' * 100
    puts " TASKS LIST"
    puts '-' * 100
    tasks.each_with_index do |task, index|
      done_mark = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1} - #{done_mark} #{task.description}"
    end
    puts '-' * 100
  end

end