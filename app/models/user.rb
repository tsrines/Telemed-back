class User < ApplicationRecord
  has_many :ailments
  has_many :favorites

  has_many :doctors, through: :favorites

  validates :email, presence: true
  # validates :email, uniqueness: true
  validates :password, presence: true

end
