class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      
      t.string :things_to_do
      t.string :notes
      t.integer :due_date
      t.integer :user_id
    end
  end
end
