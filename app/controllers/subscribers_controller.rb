class SubscribersController < ApplicationController
    def create 
        @subscriber =  Subscriber.create(email: subscriber_params[:email])
        if @subscriber.valid? 
            SubscriberMailer.with(subscriber: @subscriber).welcome_email.deliver_now
        # send success message 
        # send email
        # render template: "welcome/home"

        else  
            # flash[:errors] = @subscriber.errors

        # send error message
        # render template: "welcome/home"
        end 
    end 

    def subscriber_params 
        params.require(:subscriber).permit(:email)
    end 
 
end
