class AddHabtmForTeamsAndDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :teams_developers, id: false do |t|
      t.belongs_to :team
      t.belongs_to :developer
    end
  end
end
