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

  def avg_event_score
    return 0 if event_scores.empty?

    event_scores.sum(&:amount) / event_scores.count 
  end
end
