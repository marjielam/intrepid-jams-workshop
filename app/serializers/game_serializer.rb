class GameSerializer < ActiveModel::Serializer
  attributes :id

  has_many :teams
end
