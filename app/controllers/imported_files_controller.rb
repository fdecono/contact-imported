class ImportedFilesController < ApplicationController

  def index
    @imported_files = current_user.imported_files
  end
end
