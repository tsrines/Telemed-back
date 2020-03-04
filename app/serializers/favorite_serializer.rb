class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :doctor_id, :api_id
  belongs_to :user 
  belongs_to :doctor
  

end
