class ChangeAssignmentDateFormat < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :due_date, :string
  end
end
