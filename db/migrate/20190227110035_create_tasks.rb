class CreateTasks < ActiveRecord::Migration[5.2]
  def up
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.string :resources, array: true, default: []
      t.datetime :ended_at
      t.references :step, index: true, foreign_key: true, null: false

       t.timestamps
    end
    execute <<-SQL
      DO $$ BEGIN
        CREATE TYPE task_status AS ENUM ('pending', 'completed', 'dropped');
      EXCEPTION
          WHEN duplicate_object THEN null;
      END $$;
    SQL

     add_column :tasks, :status, :task_status, index: true
  end

   def down
    drop_table :tasks
    execute <<-SQL
      DROP TYPE task_status;
    SQL
  end
end
