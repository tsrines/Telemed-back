class User < ApplicationRecord

  has_many :favorites
  has_many :doctors, through: :favorites


  # validates :email, uniqueness: true


end
