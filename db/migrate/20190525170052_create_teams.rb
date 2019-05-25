class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :logo
      t.string :name
      t.text :description
      t.string :leader
      t.text :members
      t.integer :participations

      t.timestamps
    end
  end
end
