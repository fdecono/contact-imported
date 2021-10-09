class ImportContactsFromCsv
  def self.for(file:, user_id:)
    new(file: file, user_id: user_id).execute
  end

  def initialize(file:, user_id:)
    @file = file
    @user_id = user_id
  end

  def execute
    import_contacts
  end

  private

  def import_contacts
    CSV.foreach(@file.path, headers: true, header_converters: :symbol) do |row|
      contact_info = row.to_hash.merge({user_id: @user_id})
      Contact.create! contact_info
    end
  end
end
