class AddUploadurlToStors < ActiveRecord::Migration
  def change
    add_column :stors, :uploadurl, :string
  end
end
