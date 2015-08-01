class CreateKnols < ActiveRecord::Migration
  def change
    create_table :knols do |t|
      t.datetime :date
      t.string :name
      t.string :tags
      t.string :desc
      t.text :instructions
      t.text :knowledge
      t.text :examples

      t.timestamps
    end
  end
end
