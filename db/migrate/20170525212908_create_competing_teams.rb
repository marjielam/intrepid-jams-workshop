class CreateCompetingTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :competing_teams do |t|
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :score
      t.timestamps
    end
  end
end
