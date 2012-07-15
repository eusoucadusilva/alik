class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      @contact.deliver_background
      redirect_to root_path, notice: t("flash.sendmail.notice")
    else
      render "new"
    end
  end
end
