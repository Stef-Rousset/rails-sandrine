class Contact < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true

  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "Demande d'informations/ formulaire de contact",
      to: 'stephanierousset59@gmail.com',
      from: %("#{first_name}" "#{last_name}" <#{email}>)
      #the form will display the name entered by the user followed by the email
    }
  end
end
