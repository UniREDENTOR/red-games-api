class RemoveUniqueAttrFromEventScoresTable < ActiveRecord::Migration[5.2]
  def change
    remove_index :event_scores, :uuid
  end
end
