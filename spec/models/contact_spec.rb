require 'rails_helper'

RSpec.describe Contact, type: :model do

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :telephone }
  it { is_expected.to validate_presence_of :address }
  it { is_expected.to validate_presence_of :date_of_birth }
  it { is_expected.to validate_presence_of :credit_card_number }
  it { is_expected.to validate_presence_of :credit_card_franchise }
end
