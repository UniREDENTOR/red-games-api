class Api::DaysController < ApplicationController
  def index
    @days = Day.order(:date)
  end

  def show
    @day = Day.includes(:games).find(params[:id])
  end
end
