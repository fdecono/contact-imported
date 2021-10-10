require 'rails_helper'

RSpec.describe ImportContactsFromCsv do
  let(:execute_interactor) { described_class.for file: file, user_id: user.id }
  let(:user) { create :user }
  let(:file) { fixture_file_upload('spec/test_files/test_data.csv') }

  context 'with a valid file' do
    it 'imports the contacts correctly' do
      expect { execute_interactor }.to change { Contact.count }.by 7
    end

    it 'creates a ErrorLog for the repeated email' do
      expect { execute_interactor }.to change { ErrorLog.count }.by 1
    end
  end

  context 'without a file' do
    let(:file) { nil }

    it 'raises a NoFileException' do
      expect { execute_interactor }.to raise_error(NoFileError).with_message('No file was uploaded')
    end
  end
end
