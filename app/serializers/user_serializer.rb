# Provides the output schema for the /Users endpoint
class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :schedule
end
