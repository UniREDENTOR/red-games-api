class Game < ApplicationRecord
  belongs_to :day

  validates_presence_of :name, :description, :time, :locale, :edital, :day
end
