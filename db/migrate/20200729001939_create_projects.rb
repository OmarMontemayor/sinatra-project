class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :job
      t.boolean :complete
      t.float :budget
      t.integer :user_id
    end
  end
end
