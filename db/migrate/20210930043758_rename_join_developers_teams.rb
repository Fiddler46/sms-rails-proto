class RenameJoinDevelopersTeams < ActiveRecord::Migration[6.1]
  def change
    rename_table :teams_developers, :developers_teams
  end
end
