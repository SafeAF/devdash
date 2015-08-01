class CreateStors < ActiveRecord::Migration
  def change
    create_table :stors do |t|
      t.string :name
      t.string :tags
      t.datetime :upload_date
      t.binary :upload_file

      t.timestamps
    end
  end
end
