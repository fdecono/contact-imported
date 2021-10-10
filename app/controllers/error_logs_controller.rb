class ErrorLogsController < ApplicationController

  def index
    @error_logs = current_user.error_logs
  end
end
