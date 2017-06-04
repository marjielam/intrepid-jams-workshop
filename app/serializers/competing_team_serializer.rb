class CompetingTeamSerializer < ActiveModel::Serializer
  embed :ids

  attributes :team_id, :score, :name
  has_one :team

  def name
    "#{team.name}"
  end
end
