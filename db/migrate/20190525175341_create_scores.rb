class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.float :amount
      t.references :team, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
