class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :doctor_id
  belongs_to :user

end
