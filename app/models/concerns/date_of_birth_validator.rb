class DateOfBirthValidator < ActiveModel::Validator
  def validate(record)
    byebug
    record.errors.add :date_of_birth unless self.valid_ymd_format?(record.date_of_birth) || self.valid_f_format?(record.date_of_birth)
  end

  def self.valid_ymd_format?(date)
    date.to_s.match(/\d{4}\d{2}\d{2}/)
  end

  def self.valid_f_format?(date)
    date.to_s.match(/\d{4}-\d{2}-\d{2}/)
  end
end
