class ContactsController < ApplicationController

  def index
    @contacts = current_user.contacts
  end

  def import
    ImportContactsFromCsv.for file: params[:file], user_id: current_user.id
    redirect_to contacts_path, notice: 'Contacts uploaded successfully'
  end

  def destroy
    Contact.find(params[:id]).delete
    redirect_to contacts_path, notice: 'Contact deleted successfully'
  end
end
