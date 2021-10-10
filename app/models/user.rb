class User < ApplicationRecord
  devise :database_authenticatable, :registerable

  has_many :contacts
  has_many :error_logs
  has_many :imported_files

  validates :email, :password, presence: true
end
