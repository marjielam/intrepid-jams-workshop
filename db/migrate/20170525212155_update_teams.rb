class UpdateTeams < ActiveRecord::Migration[5.0]
  def up
    remove_column :teams, :player_names
  end
  def down
    add_column :teams, :player_names, :string
  end
end
