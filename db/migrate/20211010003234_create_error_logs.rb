class CreateErrorLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :error_logs do |t|
      t.references :user, foreign_key: true
      t.string :error, null: false
      t.string :contact_info, null: false
      t.timestamps
    end
  end
end
