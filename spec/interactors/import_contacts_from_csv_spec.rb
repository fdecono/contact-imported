require 'rails_helper'

RSpec.describe ImportContactsFromCsv do
  let(:execute_interactor) { described_class.for file: file, user_id: user.id }
  let(:user) { create :user }
  let(:file) { fixture_file_upload('spec/test_files/test_data.csv') }

  it 'imports the contacts correctly' do
    expect { execute_interactor }.to change { Contact.count }.by 7
  end
end
