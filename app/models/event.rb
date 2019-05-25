class Event < ApplicationRecord
  has_many :event_scores
  has_many :teams, through: :event_scores

  def active?
    Time.now >= start_at && Time.now <= end_at
  end
end
