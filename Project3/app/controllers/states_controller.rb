class StatesController < ApplicationController
  def filter
    @matching_states = (params[:substring] ? State.filter(params[:substring]) : nil)
    @substring = params[:substring]

    respond_to :html
  end
end