module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from NoFileError, with: :handle_no_file_error
  end

  private

  def handle_no_file_error(exception)
    redirect_to contacts_path, notice: exception.message
  end
end
