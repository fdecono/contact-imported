class ApplicationController < ActionController::Base
  include ExceptionHandler
  include Pagy::Backend

  before_action :authenticate_user!
end
