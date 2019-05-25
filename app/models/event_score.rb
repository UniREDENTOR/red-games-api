class EventScore < ApplicationRecord
  belongs_to :team
  belongs_to :event

  validates_presence_of :uuid, :amount
  validates_uniqueness_of :uuid
  validates_inclusion_of :amount, in: 1..10
end
