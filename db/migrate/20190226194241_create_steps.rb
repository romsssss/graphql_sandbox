class CreateSteps < ActiveRecord::Migration[5.2]
  def up
    create_table :steps do |t|
      t.string :title
      t.integer :position
      t.datetime :ended_at
      t.references :objective, index: true, foreign_key: true, null: false

       t.timestamps
    end
    execute <<-SQL
      DO $$ BEGIN
        CREATE TYPE step_status AS ENUM ('pending', 'completed');
      EXCEPTION
          WHEN duplicate_object THEN null;
      END $$;
    SQL

     add_column :steps, :status, :step_status, index: true
  end

   def down
    drop_table :steps
    execute <<-SQL
      DROP TYPE step_status;
    SQL
  end
end
