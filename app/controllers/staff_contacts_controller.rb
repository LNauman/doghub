class StaffContactsController < ApplicationController
  def new
    @staff_contact = StaffContact.new
  end

  def index
    @staff_contact = StaffContact.all
  end

  def create
    @staff_contact = StaffContact.new(reg_params)
    if @staff_contact.contact
      flash[:notice] = 'Your contact has been submitted!'
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @staff_contact = StaffContact.find(params[:id])
    flash[:notice] = "Staff contact successfully removed" 
    @staff_contact.destroy
    redirect_to '/staff_contacts'
  end

  protected

  def reg_params
    params.require(:staff_contact).permit(
      :email,
      :subject,
      :description,
      :first_name,
      :last_name
      )
  end
end
