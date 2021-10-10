class NoFileError < StandardError
  attr_reader :error

  def initialize(error_message)
    super error_message.to_s
    @error_message = error_message
  end
end
