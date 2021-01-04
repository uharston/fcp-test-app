class SubscribersController < ApplicationController
    def create 
        byebug
        @subscriber =  Subscriber.create(email: subscriber_params[:email])
        if @subscriber.valid? 
        # send success message 
        # send email
        else  
        # send error message
        end 
    end 

    def subscriber_params 
        params.require(:subscriber).permit(:email)
    end 
 
end
