class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :first_name, :last_name, :title, :address, :gender, :bio, :phone_number
  has_many :favorites
end
