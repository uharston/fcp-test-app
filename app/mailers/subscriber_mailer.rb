class SubscriberMailer < ApplicationMailer
    default from: 'uharston@gmail.com' 

    def welcome_email 
        @subscriber = params[:subscriber]
        mail(to: @subscriber.email, subject: "Welcome To Benz Parts Subscriber List!")
    end
end
