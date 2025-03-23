class TodoList
  def initialize
    @tasks = []
  end

  # Method to add a task to the to-do list
  def add_task(task)
    @tasks << { task: task, completed: false }
    puts "Task added: #{task}"
  end

  # Method to view all tasks
  def view_tasks
    if @tasks.empty?
      puts "No tasks in the to-do list."
    else
      @tasks.each_with_index do |task_hash, index|
        status = task_hash[:completed] ? '[X]' : '[ ]'
        puts "#{index + 1}. #{status} #{task_hash[:task]}"
      end
    end
  end

  # Method to mark a task as complete
  def complete_task(index)
    if index.between?(1, @tasks.size)
      @tasks[index - 1][:completed] = true
      puts "Task #{index} marked as complete."
    else
      puts "Invalid task number."
    end
  end
end

# Example usage
todo_list = TodoList.new

# Add tasks
todo_list.add_task("Buy groceries")
todo_list.add_task("Read a book")
todo_list.add_task("Go for a run")

# View tasks
puts "\nCurrent tasks:"
todo_list.view_tasks

# Mark a task as complete
todo_list.complete_task(2)

# View tasks again
puts "\nTasks after marking one as complete:"
todo_list.view_tasks
