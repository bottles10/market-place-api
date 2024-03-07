class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true, format: { with: /@/ }
  validates :password_digest, presence: true
end
