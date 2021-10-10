class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.string :email, null: false
      t.date :date_of_birth, null: false
      t.string :telephone, null: false
      t.string :address, null: false
      t.string :credit_card_number, null: false
      t.string :credit_card_franchise, null: false
      t.timestamps
    end
  end
end
