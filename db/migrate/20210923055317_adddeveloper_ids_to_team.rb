class AdddeveloperIdsToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :dev_ids, :string, default: [].to_yaml, array: true
  end
end
