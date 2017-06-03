class GameSerializer < ActiveModel::Serializer
  attributes :id

  has_many :competing_teams
end
