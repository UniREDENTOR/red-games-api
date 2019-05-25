class Team < ApplicationRecord
  has_many :scores

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
end
