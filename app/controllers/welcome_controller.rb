class WelcomeController < ApplicationController

    def home 
        @subscriber = Subscriber.new 
    end 

    
end
