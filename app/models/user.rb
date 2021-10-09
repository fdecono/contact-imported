class User < ApplicationRecord
  devise :database_authenticatable, :registerable

  has_many :contacts

  validates :email, :password, presence: true
end
