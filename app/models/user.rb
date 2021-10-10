class User < ApplicationRecord
  devise :database_authenticatable, :registerable

  has_many :contacts
  has_many :error_logs

  validates :email, :password, presence: true
end
