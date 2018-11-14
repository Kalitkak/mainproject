class ApplicationMailer < ActionMailer::Base.mail
  default from: 'from@example.com' , to: 'to@domain.com', subject: "Welcome to My Awesome Site", body: 'I am the email body.').deliver_now
  layout 'mailer'
  end
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'your-email@example.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
end
end
