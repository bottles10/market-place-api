class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: /@/ }
  validates :password_digest, presence: true
end
