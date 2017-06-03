class CompetingTeamSerializer < ActiveModel::Serializer
  attributes :team, :score
  has_one :team, embed: :objects
end
