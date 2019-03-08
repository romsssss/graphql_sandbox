class CreateNewUserObjective < ActiveRecord::Migration[5.0]
  def change
    create_table :user_objectives do |t|
      t.string :title
      t.datetime :ended_at
      t.references :user_project, index: true, foreign_key: true, null: false

       t.timestamps
    end
  end
end
