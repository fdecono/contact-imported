class ImportContactsFromCsv
  def self.for(file:, user_id:)
    new(file: file, user_id: user_id).execute
  end

  def initialize(file:, user_id:)
    @file = file
    @user_id = user_id
    @previous_contacts = Contact.count
  end

  def execute
    validate_file
    CSV.foreach(@file.path, headers: true, header_converters: :symbol) do |row|
      contact_info = row.to_hash.merge({user_id: @user_id})
      create_contacts_from_csv { Contact.create! contact_info }
    end
    log_imported_file
  end

  private

  def validate_file
    raise NoFileError, 'No file was uploaded' unless @file.present?
  end

  def create_contacts_from_csv
    yield
  rescue => e
    ErrorLog.create! user: user, error: e.message, contact_info: e.record.inspect
  end

  def log_imported_file
    status = Contact.count > @previous_contacts ? 'Finished' : 'Failed'
    ImportedFile.create! file_name: @file.original_filename, status: status, user: user
  end

  def user
    @user ||= User.find @user_id
  end
end
