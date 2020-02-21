class User < ApplicationRecord
  has_many :ailments
  has_many :doctor_ailments, through: :ailments
  has_many :doctors, through: :doctor_ailments
end
