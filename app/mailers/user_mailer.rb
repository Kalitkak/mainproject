class UserMailer < ApplicationMailer
  default from: "kalitka.kse@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'xsusha_@mail.ru',
         subject: "A new contact form message from #{name}")
  end
end
