class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts '-' * 50
      puts 'What do you want to do?'
      puts '1 - List all tasks'
      puts '2 - Create a new task'
      puts '3 - Mark task as done'
      puts '4 - Remove task'
      puts '-' * 50
      puts 'Enter your option:'
      puts '-' * 50

      action = gets.chomp.to_i

      case action
      when 1 then @controller.list
      when 2 then @controller.create
      when 3 then @controller.mark_as_done
      when 4 then @controller.destroy
      end
    end
  end
end