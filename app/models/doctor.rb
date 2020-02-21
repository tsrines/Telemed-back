class Doctor < ApplicationRecord
  has_many :doctor_ailments
  has_many :ailments, through: :doctor_ailments
  has_many :users, through: :ailments
end
