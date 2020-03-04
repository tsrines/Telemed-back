class Doctor < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  validates_uniqueness_of :api_id

end
