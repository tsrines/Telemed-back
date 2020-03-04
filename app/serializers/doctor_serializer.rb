class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :first_name, :last_name, :title, :address, :gender, :bio, :phone_number, :image, :specialty
  has_many :favorites
  has_many :users, through: :favorites
end
