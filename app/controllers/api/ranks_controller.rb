class Api::RanksController < ApplicationController
  def index
    @ranks = Team.includes(:scores).sort_by(&:total_score)
  end
end
