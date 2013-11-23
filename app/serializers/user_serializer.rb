class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :api_token
end
