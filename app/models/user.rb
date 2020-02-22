class User < ApplicationRecord
  has_many :ailments
  has_many :doctor_ailments, through: :ailments
  has_many :doctors, through: :doctor_ailments
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
