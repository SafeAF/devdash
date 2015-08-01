class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :num
      t.string :name
      t.datetime :incep_date
      t.datetime :target_date
      t.integer :priority
      t.text :desc

      t.timestamps
    end
  end
end
