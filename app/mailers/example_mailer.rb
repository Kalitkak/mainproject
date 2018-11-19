class ExampleMailer < ApplicationMailer
  default from: "kalitka.kse@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
