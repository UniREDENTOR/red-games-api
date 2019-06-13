class Team < ApplicationRecord
  has_many :scores

  has_many :event_scores
  has_many :events, through: :event_scores

  mount_uploader :logo, LogoUploader

  validates_presence_of :logo, :name,
                        :leader, :members

  rails_admin do
    field :logo
    field :name
    field :description
    field :leader
    field :members
    field :participations
  end

  def total_score
    scores.sum(:amount)
  end

  def avg_event_score(event_id)
    scores = event_scores.by_event(event_id)
    return 0 if scores.empty?

    scores.sum(&:amount) / scores.count
  end
end
