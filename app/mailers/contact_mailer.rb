class ContactMailer < ActionMailer::Base
  default to: 'curtdunne@gmail.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'Verify Account Message')
  end
  
end
