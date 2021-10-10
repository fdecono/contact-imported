require 'rails_helper'

RSpec.describe ErrorLog, type: :model do

  it { is_expected.to validate_presence_of :error }
  it { is_expected.to validate_presence_of :contact_info }
end
