class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :create]

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      @contact = Contact.new # remmettre à zero le formulaire
      # flash[:notice] = 'Merci pour votre message, je reviens vers vous très prochainement !'
      # pas de .now avec flach quand on redirect, seulement quand render
      redirect_to contacts_path, notice: 'Merci pour votre message, je reviens vers vous très prochainement !'
    else
      flash.now[:alert] = "Votre message n'a pas été envoyé"
      render :index
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
