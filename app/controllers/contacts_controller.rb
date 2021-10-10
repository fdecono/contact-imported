class ContactsController < ApplicationController

  def index
    @pagy, @contacts = pagy(current_user.contacts)
  end

  def import
    ImportContactsFromCsv.for file: params[:file], user_id: current_user.id
    redirect_to contacts_path, notice: 'The system finished scanning the imported file'
  end

  def destroy
    Contact.find(params[:id]).delete
    redirect_to contacts_path, notice: 'Contact deleted successfully'
  end
end
