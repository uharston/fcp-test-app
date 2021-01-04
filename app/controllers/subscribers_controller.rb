class SubscribersController < ApplicationController
    def create 
        @subscriber =  Subscriber.create(email: subscriber_params[:email])
        if @subscriber.valid? 
            SubscriberMailer.with(subscriber: @subscriber).welcome_email.deliver_now
        end 
    end 

    def subscriber_params 
        params.require(:subscriber).permit(:email)
    end 
 
end
