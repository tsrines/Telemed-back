class DoctorAilment < ApplicationRecord
  belongs_to :doctor
  has_many :ailments
end
