class Api::EventsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :vote


  def index
    @events = Event.order(:name)
  end

  def teams
    @teams = Team.order(:name)
  end

  def vote
    @vote = EventScore.new(event_scores_params)

    if @vote.save
      render json: { success: true }
    else
      render json: { success: false, errors: @vote.errors.full_messages }, status: 400
    end
  end

  private 

  def event_scores_params
    params.permit(:team_id, :event_id, :uuid, :amount)
  end
end
