class EmailValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add :email if self.class.invalid_email?(record.email) || self.class.repeated_email?(record)
  end

  def self.invalid_email?(email)
    !URI::MailTo::EMAIL_REGEXP.match? email
  end

  def self.repeated_email?(record)
    record.user.contacts.pluck(:email).include? record.email
  end
end
