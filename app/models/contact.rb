class Contact < ApplicationRecord
  belongs_to :user

  validates :name, :email, :telephone, :address, :date_of_birth, :credit_card_number, :credit_card_franchise, presence: true
end
