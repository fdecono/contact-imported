class ErrorLogsController < ApplicationController

  def index
    @pagy, @error_logs = pagy(current_user.error_logs)
  end
end
