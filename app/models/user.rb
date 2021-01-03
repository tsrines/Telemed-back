class User < ApplicationRecord
  has_many :favorites
  has_many :searches
  has_many :doctors, through: :favorites
  enum role: %i[patient doctor]
  after_initialize :set_default_role, if: :new_record?
  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :role, presence: true
  has_secure_password

  def set_default_role
    self.role ||= :patient
  end
end
