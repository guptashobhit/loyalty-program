class User < ApplicationRecord
  encrypts :email, :mobile, deterministic: true #AES256 encryption of PII data
  has_many :spends
  has_many :points

  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, allow_blank: true }
  validates :mobile, presence: true, uniqueness: true
end
