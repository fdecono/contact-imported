class CreatedImportedFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :imported_files do |t|
      t.references :user, foreign_key: true
      t.string :file_name, null: false
      t.string :status, null: false
      t.timestamps
    end
  end
end
