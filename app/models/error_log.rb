class ErrorLog < ApplicationRecord
  belongs_to :user

  validates :error, :contact_info, presence: true
end
