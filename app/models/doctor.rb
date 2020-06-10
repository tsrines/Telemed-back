
class Doctor < ApplicationRecord
  include Gravtastic
  is_gravtastic
  has_many :favorites
  has_many :users, through: :favorites
  validates_uniqueness_of :api_id

end
