class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players, :competing_teams

  has_many :players
  has_many :competing_teams, serializer: CompetingTeamSerializerForGames
end
