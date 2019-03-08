class CreateObjective < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :title
      t.datetime :ended_at

      t.timestamps
    end
  end
end
