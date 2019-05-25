class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.time :time
      t.string :locale
      t.string :edital
      t.text :information
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
