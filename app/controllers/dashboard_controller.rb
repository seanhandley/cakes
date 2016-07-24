class DashboardController < ApplicationController
  def index
    render text: Cost.all.inspect
  end
end