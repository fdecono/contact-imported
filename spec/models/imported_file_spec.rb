require 'rails_helper'

RSpec.describe ImportedFile, type: :model do

  it { is_expected.to validate_presence_of :file_name }
  it { is_expected.to validate_presence_of :status }
end
