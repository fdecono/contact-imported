class ImportedFile < ApplicationRecord
  belongs_to :user

  validates :file_name, :status, presence: true
end
