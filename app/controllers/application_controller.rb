class ApplicationController < ActionController::Base
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
        to: 'kalitka.kse@gmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end
end
