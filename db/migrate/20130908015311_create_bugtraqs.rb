class CreateBugtraqs < ActiveRecord::Migration
  def change
    create_table :bugtraqs do |t|
      t.string :name
      t.datetime :incep_date
      t.datetime :target_date
      t.text :desc
      t.string :tags
      t.integer :priority
      t.text :bug
      t.text :fix
      t.string :sourcefile
      t.boolean :remediated

      t.timestamps
    end
  end
end
