class EventScore < ApplicationRecord
  belongs_to :team
  belongs_to :event

  scope :by_event, ->(event) { where(event: event) }

  validates_presence_of :uuid, :amount
  validates_uniqueness_of :uuid, scope: %i[team_id event_id]
  validates_inclusion_of :amount, in: 1..5
  validate :event_expired?

  def event_expired?
    return errors.add(:event, 'já expirou') unless event && event.active?
  end
end
