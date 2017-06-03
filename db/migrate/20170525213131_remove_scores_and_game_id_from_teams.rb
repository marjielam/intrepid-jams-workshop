class RemoveScoresAndGameIdFromTeams < ActiveRecord::Migration[5.0]
  def up
    remove_column :teams, :score
    remove_column :teams, :game_id
  end
  def down
    add_column :teams, :score, :integer
    add_column :teams, :game_id, :integer
  end
end
