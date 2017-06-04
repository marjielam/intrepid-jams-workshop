class CompetingTeamSerializerForGames < ActiveModel::Serializer
  embed :ids
  attributes :id, :score, :opposing_team_name, :opposing_team_score

  has_one :game
  has_one :team

  def id
    game.id
  end

  def opposing_team_name
    competing_teams = CompetingTeam.where(game: game)
    competing_teams.each do |competing_team|
      if competing_team.team_id != team.id
        @opposing_team = Team.find(competing_team.team_id)
      end
    end
    @opposing_team.name
  end

  def opposing_team_score
    competing_teams = CompetingTeam.where(game: game)
    competing_teams.each do |competing_team|
      if competing_team.team_id != team.id
        @opposing_team_score = competing_team.score
      end
    end
    @opposing_team_score
  end
end
