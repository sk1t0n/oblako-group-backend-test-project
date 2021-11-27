class ChangeTodosIsCompleted < ActiveRecord::Migration[6.1]
  change_column_default :todos, :isCompleted, false
end
