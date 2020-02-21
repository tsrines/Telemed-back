class Ailment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor_ailments
end
